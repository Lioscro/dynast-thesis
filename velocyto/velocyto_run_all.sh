suffix=${1:-""}

while read accession; do
    ./scripts/velocyto_run.sh dynast/${accession}/align/Aligned.sortedByCoord.out.bam dynast/${accession}/align/Solo.out/Gene/filtered/barcodes.tsv velocyto/${accession}/run${suffix}
done < data/accessions.txt
