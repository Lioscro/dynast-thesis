fastq1=$1
fastq2=$2
out_dir=$3

mkdir -p ${out_dir}
/usr/bin/time -v dynast align -i STAR_index -o ${out_dir} -x 10xv2 ${fastq2} ${fastq1} --STAR-overrides "--limitBAMsortRAM 100000000000" --tmp ${out_dir}_tmp --overwrite --verbose -t 16 2>&1 | tee ${out_dir}/time.txt