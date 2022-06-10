bam_path=$1
snp_csv=$2
out_dir=$3

mkdir -p ${out_dir}
/usr/bin/time -v dynast count --snp-csv ${snp_csv} -g data/Mus_musculus.GRCm38.102.gtf --barcode-tag CB --umi-tag UB ${bam_path} -o ${out_dir} --conversion TC --overwrite --verbose -t 32 2>&1 | tee ${out_dir}/time.txt
