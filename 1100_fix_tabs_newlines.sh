#! /bin/bash -x

TMPFILE="$(mktemp -p .)"

for i in *.json
do
    # convert "\n" to newlines
    sed -e 's/\\n/\n/g' "$i" > "$TMPFILE"
    mv "$TMPFILE" "$i"

    # convert "\t" to tabs
    sed -e 's/\\t/\t/g' "$i" > "$TMPFILE"
    mv "$TMPFILE" "$i"
done
