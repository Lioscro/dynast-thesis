bam_path=$1
barcodes_path=$2
out_dir=$3

mkdir -p ${out_dir}
/usr/bin/time -v dynast count -g data/Homo_sapiens.GRCh38.102.gtf --barcode-tag CB --umi-tag UB --barcodes ${barcodes_path} ${bam_path} -o ${out_dir} --conversion TC --dedup-mode exon --tmp ${out_dir}_tmp --exon-overlap strict --overwrite --verbose -t 32 2>&1 | tee ${out_dir}/time.txt
