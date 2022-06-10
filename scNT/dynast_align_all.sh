suffix=${1:-""}

while read accession; do
    ./scripts/dynast_align.sh data/${accession}_1.fastq.gz data/${accession}_2.fastq.gz dynast/${accession}/align${suffix}
done < data/accessions.txt
