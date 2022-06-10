sample_accession=$1
control_accession=$2
num_barcodes=$3
sample_tsv_dir=$4
control_tsv_dir=$5
bam_dir=$6
out_dir=$7

mkdir -p ${out_dir}
/usr/bin/time -v ./pipeline/TC_calling/Step3_substract_background_locus.sh ${sample_tsv_dir} ${control_tsv_dir} ${sample_accession} ${control_accession} ${num_barcodes} ${bam_dir} ${out_dir} pipeline/TC_calling/scripts 2>&1 | tee ${out_dir}/time.txt