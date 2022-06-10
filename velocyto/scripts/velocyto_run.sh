bam_path=$1
barcodes_path=$2
out_dir=$3

mkdir -p ${out_dir}
velocyto run -b ${barcodes_path} -o ${out_dir} -u Gene -@ 32 ${bam_path} data/Homo_sapiens.GRCh38.102.gtf.gz -vvv 2>&1 | tee ${out_dir}/time.txt