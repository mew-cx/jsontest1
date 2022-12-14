#! /bin/bash -x

INFILE="iMsOB3b.json"
OUTFILE="iMsOB3b.tsv"

echo "id	name	charge	formula	inchi	upa" > $OUTFILE

jq -r -f extract_metabolites.jq $INFILE >> $OUTFILE
