process skesa_1 {

    input:
        path fastq
        
    output:
        path "*.fasta", emit: output1
        
    script:
    """
#!/usr/bin/env bash

fastq='$fastq'

skesa --fastq $fastq --gz > ${fastq}.fasta

    """

}