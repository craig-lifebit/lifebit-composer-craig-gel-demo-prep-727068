nextflow.enable.dsl=2

include { skesa_1 } from './modules/skesa_1/module.nf'
include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { gunzip_1 } from './modules/gunzip_1/module.nf'

workflow {
input1 = Channel.fromPath(params.gunzip_1.any_file)
gunzip_1(input1)
fastqc_1(gunzip_1.out.output1)
skesa_1(gunzip_1.out.output1)
}
