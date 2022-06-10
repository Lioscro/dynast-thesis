suffix=${1:-""}

while read accession; do
    ./scripts/dynast_consensus_filter.sh dynast/${accession}/align/Aligned.sortedByCoord.out.bam dynast/${accession}/align/Solo.out/Gene/filtered/barcodes.tsv dynast/${accession}/consensus_filter${suffix}
done < data/accessions.txt
