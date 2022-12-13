#! /bin/bash -x

INFILE="iMsOB3b.json"

jq -r '.metabolites | .[] | [ .id, .name, .charge, .formula, .annotation.inchi ] | @tsv' "$INFILE"
