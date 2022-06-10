suffix=${1:-""}

while read accession && read num_barcodes <&3; do
    ./scripts/scNT_Step2.sh ${accession} ${num_barcodes} scNT/${accession}/Step1/output_STAR_modified scNT/${accession}/Step2${suffix} 
done < data/accessions.txt 3< data/num_barcodes.txt