suffix=${1:-""}
control_accession="SRR12225122"

while read accession; do
    if [ "${accession}" = "${control_accession}" ]; then
        continue
    fi
    ./scripts/scNT_to_adata.sh scNT/${accession}/Step4/${accession}_TC_matrix.rds scNT/${accession}/adata
done < data/accessions.txt
