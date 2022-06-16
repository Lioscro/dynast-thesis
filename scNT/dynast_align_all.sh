suffix=${1:-""}

while read accession && read num_barcodes <&3; do
    ./scripts/dynast_align.sh data/${accession}_1.fastq.gz data/${accession}_2.fastq.gz ${num_barcodes} dynast/${accession}/align${suffix}
done < data/accessions.txt 3< data/num_core_barcodes.txt
