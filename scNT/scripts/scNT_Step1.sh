accession=$1
num_barcodes=$2
fastq1=$3
fastq2=$4
out_dir=$5

mkdir -p ${out_dir}
mkdir -p ${out_dir}_tmp
/usr/bin/time -v ./pipeline/TC_calling/Step1_alignment.sh ${accession} ${fastq1} ${fastq2} ${out_dir} data/Drop-seq_tools-1.13 STAR_index data/Mus_musculus.GRCm38.dna.primary_assembly.fa data/Mus_musculus.GRCm38.102.gtf ${num_barcodes} ${out_dir}_tmp data data pipeline/TC_calling/scripts 2>&1 | tee ${out_dir}/time.txt

rm -rf ${out_dir}_tmp