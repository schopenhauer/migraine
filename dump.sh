#!/bin/bash

filename="databases.txt"

while read -r line; do
  database="$line"
  echo "Dumping: $database"
  mongodump –-gzip –db $database -u admin –-authenticationDatabase admin
done < "$filename"

echo "Done."
