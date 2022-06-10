N=2
for i in $(seq 1 $N); do
    ./dynast_align_all.sh _${i}
    
    while read accession; do
        ls -d dynast/${accession}/align_${i}/* | grep -v time.txt | xargs -n1 -d"\n" rm -rf
    done < data/accessions.txt
done