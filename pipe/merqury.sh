kmer=$1

if [ -z "${kmer}" ]; then
    echo "Error: The variable 'kmer' is empty."
    exit 1
fi

if [ ! -d "k${kmer}/merqury" ]; then
    mkdir "k${kmer}/merqury"
fi

cd k${kmer}/merqury

merqury.sh \
    ../read-all.meryl \
    ../../hap1.fa \
    ../../hap2.fa \
    merqury \
    1> ../merqury.log \
    2> ../merqury.err

