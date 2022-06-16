rds_path=$1
out_dir=$2

mkdir -p ${out_dir}
Rscript ./scripts/scNT_to_tsv.R ${rds_path} ${out_dir}/matrix.tsv
python ./scripts/tsv_to_adata.py ${out_dir}/matrix.tsv ${out_dir}/adata.h5ad