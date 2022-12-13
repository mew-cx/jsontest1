#! /bin/bash -x

INFILE="iMsOB3b.json"
OUTFILE="iMsOB3b.tsv"

echo "id	name	charge	formula	inchi	upa" > $OUTFILE

jq -r '.metabolites | .[] | [ .id, .name, .charge, .formula, .annotation.inchi, .annotation.upa ] | @tsv' $INFILE >> $OUTFILE
