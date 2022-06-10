accession=$1
num_barcodes=$2
bam_dir=$3
out_dir=$4

mkdir -p ${out_dir}
mkdir -p ${out_dir}_tmp
/usr/bin/time -v ./pipeline/TC_calling/Step2_extract_alignment_info.sh ${bam_dir} ${accession} ${num_barcodes} data/Mus_musculus.GRCm38.dna.primary_assembly.fa ${out_dir} ${out_dir}_tmp data/jvarkit-2021.10.13 pipeline/TC_calling/scripts 2>&1 | tee ${out_dir}/time.txt

rm -rf ${out_dir}_tmp