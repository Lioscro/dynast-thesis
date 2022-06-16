import anndata
import pandas as pd
from scipy import sparse

def main(tsv, h5ad):
    mtx = pd.read_csv(tsv, sep='\t')
    C_mask = mtx.index.str.endswith('--C')
    mtx_C = mtx[C_mask]
    mtx_T = mtx[~C_mask]

    mtx_C.index = mtx_C.index.str.split('--').str[0]
    mtx_T.index = mtx_T.index.str.split('--').str[0]

    barcodes = sorted(mtx.columns)
    genes = sorted(mtx_C.index.union(mtx_T.index))
    mtx_C = mtx_C.reindex(genes, fill_value=0)[barcodes].T
    mtx_T = mtx_T.reindex(genes, fill_value=0)[barcodes].T

    adata = anndata.AnnData(
        obs=pd.DataFrame(index=barcodes),
        var=pd.DataFrame(index=genes),
        X=sparse.csr_matrix(mtx_C.values + mtx_T.values),
        layers={
            'labeled_TC': sparse.csr_matrix(mtx_C.values),
            'unlabeled_TC': sparse.csr_matrix(mtx_T.values),
        }
    )
    adata.write(h5ad, compression='gzip')

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('tsv')
    parser.add_argument('h5ad')
    args = parser.parse_args()

    main(args.tsv, args.h5ad)