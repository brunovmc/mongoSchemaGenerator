#!/bin/bash

# Prompt the user for the schema name
read -p "Enter the schema name: " SCHEMA_NAME

# Capitalize the schema name
SCHEMA_NAME="$(tr '[:lower:]' '[:upper:]' <<< ${SCHEMA_NAME:0:1})${SCHEMA_NAME:1}"

# Build the schema string from the input arrays
SCHEMA_STRING="const { Schema } = require('mongoose');
const ${SCHEMA_NAME}Schema = new Schema({
"

for ARGUMENT in "$@"
do
    IFS=',' read -ra ARR <<< "$ARGUMENT"
    NAME=${ARR[0]}
    SCHEMA_STRING+="  ${NAME}: {
    type:,
    required:,
  },
"
done

# Close the schema definition
SCHEMA_STRING+="});

module.exports = ${SCHEMA_NAME}Schema;"

# Write the schema to a file
echo "$SCHEMA_STRING" > "${SCHEMA_NAME}.js"