suffix=${1:-""}

while read accession && read num_barcodes <&3; do
    ./scripts/scNT_Step1.sh ${accession} ${num_barcodes} data/${accession}_1.fastq.gz data/${accession}_2.fastq.gz scNT/${accession}/Step1${suffix}
done < data/accessions.txt 3< data/num_barcodes.txt