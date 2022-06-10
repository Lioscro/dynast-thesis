suffix=${1:-""}
control_accession="SRR12225122"

while read accession; do
    if [ "${accession}" = "${control_accession}" ]; then
        ./scripts/dynast_count_control.sh dynast/${accession}/consensus/consensus.bam dynast/${accession}/count${suffix}
    fi
done < data/accessions.txt

while read accession; do
    if [ "${accession}" = "${control_accession}" ]; then
        continue
    fi
    ./scripts/dynast_count.sh dynast/${accession}/consensus/consensus.bam dynast/${control_accession}/count/snps.csv dynast/${accession}/count${suffix}
done < data/accessions.txt
