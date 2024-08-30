kmer=$1
threadN=54

if [ -z "${kmer}" ]; then
    echo "Error: The variable 'kmer' is empty."
    exit 1
fi

meryl \
    threads=${threadN} \
    union-sum \
    output k${kmer}/read-all.meryl \
    k${kmer}/read-*.meryl \
    1> k${kmer}/read-all.meryl.log \
    2> k${kmer}/read-all.meryl.err
