Script Description: MAFFT Wrapper Script

This Bash script serves as a wrapper for the Multiple Alignment using Fast Fourier Transform (MAFFT) tool. It automates the process of aligning multiple protein sequence files in the FASTA format.

Usage:

bash
Copy code
bash ./mafft_wrapper.sh input_directory output_directory
Arguments:

input_directory: The directory containing the input protein sequence files in FASTA format.
output_directory: The directory where the aligned sequence files will be saved.
How to Use:

Place the script (mafft_wrapper.sh) in the directory where you want to run the alignment.
Open a terminal in the directory containing the script.
Execute the script by providing the input and output directories as arguments.
Example:

bash
Copy code
bash ./mafft_wrapper.sh /path/to/input_sequences /path/to/output_alignment

Script Functionality:

Checks if the correct number of arguments (input and output directories) is provided. If not, it displays a usage message and exits.
Creates the output directory if it doesn't already exist.
Iterates over all .fa files in the input directory.
For each file, performs a multiple sequence alignment using MAFFT.
Saves the aligned sequences in the specified output directory with "_aligned.fa" appended to the original file name.
Displays a message indicating the successful alignment for each file.
This script facilitates the batch alignment of protein sequences using MAFFT, streamlining the process for multiple files and providing organized results in the specified output directory.

Suggestion istall Mafft: 

conda create --name mafft_env
conda activate mafft_env
conda install bioconda::mafft

