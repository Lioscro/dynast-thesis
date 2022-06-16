fastq1=$1
fastq2=$2
num_barcodes=$3
out_dir=$4

mkdir -p ${out_dir}
/usr/bin/time -v dynast align -i STAR_index --STAR-overrides "--soloCellFilter TopCells ${num_barcodes}" -o ${out_dir} -x dropseq ${fastq2} ${fastq1} --tmp ${out_dir}_tmp --overwrite --verbose -t 32 2>&1 | tee ${out_dir}/time.txt