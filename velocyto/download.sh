mkdir -p data

# Download the reference that will be used.
wget -P data http://ftp.ensembl.org/pub/release-102/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
wget -P data http://ftp.ensembl.org/pub/release-102/gtf/homo_sapiens/Homo_sapiens.GRCh38.102.gtf.gz

wget https://caltech.box.com/shared/static/nvzqphhklk1yx938l6omursw7sr68y43.gz -O data/SRR6470906_S1_L001_R1_001.fastq.gz
wget https://caltech.box.com/shared/static/63fh2xa5t82x7s74rqa0e2u2ur59y5ox.gz -O data/SRR6470906_S1_L001_R2_001.fastq.gz
wget https://caltech.box.com/shared/static/zqi3durukillaw1pbns1kd1lowyfg5qk.gz -O data/SRR6470906_S1_L002_R1_001.fastq.gz
wget https://caltech.box.com/shared/static/i56qojfz41ns1kw9z86sla0vawsch96t.gz -O data/SRR6470906_S1_L002_R2_001.fastq.gz
wget https://caltech.box.com/shared/static/vrditbbk38tw3f61fwpg504vcc5x09ci.gz -O data/SRR6470907_S1_L001_R1_001.fastq.gz
wget https://caltech.box.com/shared/static/8ud3otwztjeqlmjctbu1fw7hg3k56ejr.gz -O data/SRR6470907_S1_L001_R2_001.fastq.gz
wget https://caltech.box.com/shared/static/ln14jjd4tz3hvgxf8zj2kmokof7f1nrf.gz -O data/SRR6470907_S1_L002_R1_001.fastq.gz
wget https://caltech.box.com/shared/static/o5bwf9u2g7egi02by3e3hbvov8fgwbb3.gz -O data/SRR6470907_S1_L002_R2_001.fastq.gz

cat data/SRR6470906_S1_L001_R1_001.fastq.gz data/SRR6470906_S1_L002_R1_001.fastq.gz > data/SRR6470906_1.fastq.gz
rm -f data/SRR6470906_S1_L001_R1_001.fastq.gz data/SRR6470906_S1_L002_R1_001.fastq.gz

cat data/SRR6470906_S1_L001_R2_001.fastq.gz data/SRR6470906_S1_L002_R2_001.fastq.gz > data/SRR6470906_2.fastq.gz
rm -f data/SRR6470906_S1_L001_R2_001.fastq.gz data/SRR6470906_S1_L002_R2_001.fastq.gz

cat data/SRR6470907_S1_L001_R1_001.fastq.gz data/SRR6470907_S1_L002_R1_001.fastq.gz > data/SRR6470907_1.fastq.gz
rm -f data/SRR6470907_S1_L001_R1_001.fastq.gz data/SRR6470907_S1_L002_R1_001.fastq.gz

cat data/SRR6470907_S1_L001_R2_001.fastq.gz data/SRR6470907_S1_L002_R2_001.fastq.gz > data/SRR6470907_2.fastq.gz
rm -f data/SRR6470907_S1_L001_R2_001.fastq.gz data/SRR6470907_S1_L002_R2_001.fastq.gz