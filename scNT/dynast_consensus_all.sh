suffix=${1:-""}

while read accession; do
    ./scripts/dynast_consensus.sh dynast/${accession}/align/Aligned.sortedByCoord.out.bam dynast/${accession}/consensus${suffix}
done < data/accessions.txt
