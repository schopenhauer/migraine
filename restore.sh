#!/bin/bash

for filename in dump/*/*.gz; do
  database=$(basename "$filename" .json)
  echo "Restoring: $database"
  #mongorestore –-gzip –-db $database $filename -u admin –-authenticationDatabase admin
done

echo "Done."
