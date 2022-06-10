suffix=${1:-""}
control_accession="SRR12225122"

while read accession && read num_barcodes <&3 && read num_core_barcodes <&4; do
    if [ "${accession}" = "${control_accession}" ]; then
        continue
    fi
    ./scripts/scNT_Step4.sh ${accession} ${num_barcodes} ${num_core_barcodes} scNT/${accession}/Step3 scNT/${accession}/Step4${suffix} 
done < data/accessions.txt 3< data/num_barcodes.txt 4< data/num_core_barcodes.txt
