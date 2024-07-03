#!/bin/bash


# Checks if an argument is given
if [ -z "$1" ]; then
	echo "Usage: ./count_file_types.sh /path/to/directory"
	exit
fi

# Checks if given argument is a valid directory
if ! [ -d "$1" ]; then
	echo "Error: Directory \"$1\" does not exist."
	exit
fi

# Counters
first_iteration=1
dir_count=0
file_count=0
symbol_count=0
others_count=0

while IFS= read -r line; do # IFS empty to ignore trailing/leading spaces, -r for raw input

	# Ignore the first line of ls
	if [ $first_iteration -eq 1 ]; then
		first_iteration=0
		continue
	fi

	first_char="${line:0:1}"

	# Checks the first character of every line and matches them with file types
	if [ "$first_char" = "d" ]; then
		(( dir_count++ )) # Directory
	elif [ "$first_char" = "-" ]; then
		(( file_count++ )) # Regular file
	elif [ "$first_char" = "l" ]; then
		(( symbol_count++ )) # Symbolic links
	else
		(( others_count++ )) # Others
	fi

done < <(ls -l "$1") # Inputs the output of ls inside the while loop

# Result output
echo "Directories: $dir_count"
echo "Regular files: $file_count"
echo "Symbolic links: $symbol_count"
echo "Other: $others_count"
