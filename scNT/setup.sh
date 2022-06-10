# Set up tools required for scNT pipeline
unzip data/Drop-seq_tools-1.13.zip -d data
tar -xzf data/2021.10.13.tar.gz -C data

cd data/jvarkit-2021.10.13 && ./gradlew sam2tsv

chmod +x data/STAR

# Gzipped files need to be uncompressed
gunzip data/Mus_musculus.GRCm38.dna.primary_assembly.fa.gz
gunzip data/Mus_musculus.GRCm38.102.gtf.gz

# Sequence dictionary required for Picard MergeBamAlignment
java -jar data/picard.jar CreateSequenceDictionary R=data/Mus_musculus.GRCm38.dna.primary_assembly.fa

samtools faidx data/Mus_musculus.GRCm38.dna.primary_assembly.fa