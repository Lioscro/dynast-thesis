suffix=${1:-""}

while read accession; do
    ./scripts/dynast_count.sh dynast/${accession}/align/Aligned.sortedByCoord.out.bam dynast/${accession}/align/Solo.out/Gene/filtered/barcodes.tsv dynast/${accession}/count${suffix}
done < data/accessions.txt
