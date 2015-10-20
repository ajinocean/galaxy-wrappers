#!/bin/bash

vcf_input=$1
readepthlimit=$2
maxindivwithmissgeno=$3
vcf_output=$4

directory=`dirname $0`

mkdir tmpdir$$

cp -rf $vcf_input tmpdir$$/input.vcf

/usr/bin/perl $directory/set_missing_genotypes_with_readdepth_on_vcf.pl -i tmpdir$$/input.vcf -l $readepthlimit -d $maxindivwithmissgeno -o $vcf_output

rm -rf tmpdir$$

