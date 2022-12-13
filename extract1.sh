#! /bin/bash -x

INFILE="iMsOB3b.json"

jq '.metabolites | .[] | [ .id, .name, .charge, .formula, .annotation.inchi ]' "$INFILE"
