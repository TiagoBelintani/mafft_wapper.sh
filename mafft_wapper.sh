#!/bin/bash

# Check if the number of arguments is appropriate
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_directory output_directory"
    exit 1
fi

input_directory="$1"
output_directory="$2"

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Loop over the .fa files in the input directory
for file in "$input_directory"/*.fa; do
    # Get the file name without the extension
    name_without_extension=$(basename "$file" .fa)

    # Path to the aligned output file
    aligned_file="$output_directory/$name_without_extension"_aligned.fa

    # Execute MAFFT and save the aligned file
    mafft --auto "$file" > "$aligned_file"

    echo "File $file aligned and saved to $aligned_file"
done
