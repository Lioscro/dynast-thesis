bam_path=$1
out_dir=$2

mkdir -p ${out_dir}
/usr/bin/time -v dynast consensus -g data/Mus_musculus.GRCm38.102.gtf --barcode-tag CB --umi-tag UB ${bam_path} -o ${out_dir} --tmp ${out_dir}_tmp --verbose -t 32 2>&1 | tee ${out_dir}/time.txt
