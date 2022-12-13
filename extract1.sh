#! /bin/bash -x

INFILE="iMsOB3b.json"

jq '.metabolites | .[] | { id : .id, name : .name, charge : .charge, formula: .formula, inchi: .annotation.inchi }' "$INFILE"
