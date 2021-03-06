#!/bin/bash

set -e
# or call the script with its absolute name
cd $(dirname $0)

curl 'http://ndr.md/data/dummy/1M.txt' > 1M.txt
curl 'http://ndr.md/data/dummy/10M.txt' > 10M.txt
curl 'http://ndr.md/data/dummy/100M.txt' > 100M.txt
curl 'http://ndr.md/data/dummy/1G.txt' > 1G.txt
wget http://ndr.md/data/bio/R1.fastq.gz
wget http://ndr.md/data/bio/R2.fastq.gz
wget http://ndr.md/data/bio/ref.fa
curl -s 'https://raw.githubusercontent.com/JJ/top-github-users-data/master/formatted/top-Espa%C3%B1a.md' > large.md
wget http://ndr.md/data/bio/genbank.txt
wget http://ndr.md/data/dummy/large.pdf
wget http://ndr.md/data/dummy/ronn.1
cat /usr/share/dict/words | sort > dict.txt


