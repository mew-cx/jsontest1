#! /bin/bash -x

TMPFILE="$(mktemp -p .)"

for i in *.json
do
    jq . "$i" > "$TMPFILE"
    mv "$TMPFILE" "$i"
done
