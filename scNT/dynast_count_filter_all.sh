suffix=${1:-""}
control_accession="SRR12225122"

while read accession; do
    if [ "${accession}" = "${control_accession}" ]; then
        ./scripts/dynast_count_control.sh dynast/${accession}/consensus_filter/consensus.bam dynast/${accession}/count_filter${suffix}
    fi
done < data/accessions.txt

while read accession; do
    if [ "${accession}" = "${control_accession}" ]; then
        continue
    fi
    ./scripts/dynast_count.sh dynast/${accession}/consensus_filter/consensus.bam dynast/${control_accession}/count_filter/snps.csv dynast/${accession}/count_filter${suffix}
done < data/accessions.txt
