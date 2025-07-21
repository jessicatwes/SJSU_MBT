# Downloading SRA files
To download SRA files you can either use SRA toolkit by NCBI or fetch the SRA using curl or wget. 

Option 1: Search for the SRR you are interested in into SRA Explorer search field. You will be provided a FastQ download url. On your terminal, use curl with the url to download the file.  
```curl -O "ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR117/056/SRR11777256/SRR11777256_1.fastq.gz" ```

Option 2: Download SRA toolkit from the NCBI website to use the fasterq-dump tool to download the SRR.  
** In this folder, the download_sra.sh is a bash file that could be used to download multiple accession files (which can be found through SRA Run Selector).

## Links and resource
[NCBI GEO Dataset](https://www.ncbi.nlm.nih.gov/gds/)  
[SRA explorer](https://sra-explorer.info/)  
[SRA toolkit](https://github.com/ncbi/sra-tools?tab=readme-ov-file)  
[fasterq-dump](https://github.com/ncbi/sra-tools/wiki/HowTo:-fasterq-dump)
