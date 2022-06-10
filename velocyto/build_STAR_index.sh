# Generate a STAR index using dynast ref
# Note that dynast ref is simply a wrapper around STAR genomegenerate and generates STAR-compatible genome indices.
dynast ref -t 16 -m 32 -i STAR_index --verbose data/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz data/Homo_sapiens.GRCh38.102.gtf.gz