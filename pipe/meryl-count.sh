kmer=$1
readID=$2
readDir=/archive/kimzz14/SRA_RAW/INSDC/Nibea_coibor/PRJNA827677
threadN=54

if [ -z "${kmer}" ]; then
    echo "Error: The variable 'kmer' is empty."
    exit 1
fi

if [ -z "${readID}" ]; then
    echo "Error: The variable 'readID' is empty."
    exit 1
fi



if [ ! -d "k${kmer}" ]; then
    mkdir "k${kmer}"
fi

meryl \
    k=${kmer} \
    threads=${threadN} \
    count \
    ${readDir}/${readID}.fastq.gz \
    output k${kmer}/read-${readID}.meryl \
    1> k${kmer}/read-${readID}.meryl.log \
    2> k${kmer}/read-${readID}.meryl.err