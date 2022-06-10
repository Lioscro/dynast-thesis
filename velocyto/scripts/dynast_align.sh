fastq1=$1
fastq2=$2
out_dir=$3

mkdir -p ${out_dir}
/usr/bin/time -v dynast align -i STAR_index -o ${out_dir} -x 10xv2 ${fastq2} ${fastq1} --overwrite --verbose -t 32 2>&1 | tee ${out_dir}/time.txt