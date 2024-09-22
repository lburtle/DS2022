
curl -o lab3-bundle.tar.gz  https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzf lab3-bundle.tar.gz

# awk can remove spaces
awk '!/^[[:space:]]*$/' lab3-bundle.tsv

# tr can remove spaces
cat lab3-bundle.tsv | tr -s '\n' > lab3-bundle.tsv

# Use `tr` - "translate"
tr '\t' ',' < lab3-bundle.tsv > lab3-bundle.csv

lines=$(($(wc -l < lab3-bundle.csv) - 1))

echo "$lines"

tar -czf converted-archive.tar.gz lab3-bundle.csv

