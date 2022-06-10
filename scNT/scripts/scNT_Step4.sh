accession=$1
num_barcodes=$2
num_core_barcodes=$3
bam_dir=$4
out_dir=$5

mkdir -p ${out_dir}
/usr/bin/time -v ./pipeline/TC_calling/Step4_genetare_TC_matrix.sh ${bam_dir} ${accession} ${num_barcodes} ${num_core_barcodes} ${out_dir} pipeline/TC_calling/scripts 2>&1 | tee ${out_dir}/time.txt
