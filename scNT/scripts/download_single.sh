# Download a single SRR accession
# usage: download_single.sh accession out_dir
accession=$1
out_dir=$2

mkdir -p ${out_dir}
fasterq-dump ${accession} --threads 16 --progress -O ${out_dir}
pigz -p 16 ${out_dir}/${accession}_1.fastq
pigz -p 16 ${out_dir}/${accession}_2.fastq