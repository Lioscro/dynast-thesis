suffix=${1:-""}

while read accession; do
    ./scripts/velocyto.sh velocyto/${accession}/align/Aligned.sortedByCoord.out.bam velocyto/${accession}/align/Solo.out/Gene/filtered/barcodes.tsv velocyto/${accession}/run${suffix}
done < data/accessions.txt
