N=2
for i in $(seq 1 $N); do
    ./velocyto_run_all.sh _${i}
    
    while read accession; do
        ls -d velocyto/${accession}/run_${i}/* | grep -v time.txt | xargs -n1 -d"\n" rm -rf
    done < data/accessions.txt
done