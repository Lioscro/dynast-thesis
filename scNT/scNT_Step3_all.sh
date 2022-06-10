suffix=${1:-""}
control_accession="SRR12225122"

while read accession && read num_barcodes <&3; do
    if [ "${accession}" = "${control_accession}" ]; then
        continue
    fi
    ./scripts/scNT_Step3.sh ${accession} ${control_accession} ${num_barcodes} scNT/${accession}/Step2 scNT/${control_accession}/Step2 scNT/${accession}/Step1/output_STAR_modified scNT/${accession}/Step3${suffix}
done < data/accessions.txt 3< data/num_barcodes.txt
