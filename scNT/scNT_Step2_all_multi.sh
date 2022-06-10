N=2
for i in $(seq 1 $N); do
    ./scNT_Step2_all.sh _${i}
    
    while read accession; do
        ls -d scNT/${accession}/Step2_${i}/* | grep -v time.txt | xargs -n1 -d"\n" rm -rf
    done < data/accessions.txt
done