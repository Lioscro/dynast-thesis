mkdir -p data

# Download tools required for scNT pipeline
wget -P data https://github.com/broadinstitute/Drop-seq/releases/download/v1.13/Drop-seq_tools-1.13.zip
wget -P data https://github.com/lindenb/jvarkit/archive/refs/tags/2021.10.13.tar.gz
wget -P data https://github.com/broadinstitute/picard/releases/download/2.27.0/picard.jar
wget -P data https://github.com/alexdobin/STAR/raw/2.7.9a/bin/Linux_x86_64_static/STAR

# Download the reference that will be used.
wget -P data http://ftp.ensembl.org/pub/release-102/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz
wget -P data http://ftp.ensembl.org/pub/release-102/gtf/mus_musculus/Mus_musculus.GRCm38.102.gtf.gz

# Download the scNT-seq Cortical-KCl data from the SRA using fasterq-dump, then gzip the FASTQs with pigz.
# The resulting FASTQs will be saved in a subdirectory with the SRR as the name.
while read accession; do
    ./scripts/download_single.sh ${accession} data
done < data/accessions.txt