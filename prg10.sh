read -p "Enter first file:" file1
read -p "Enter second file:" file2
read -p "Enter thrid file:" file3

# Name of the output (merged) file
merged="merged.txt"

# Check if all three files exist
for f in "$file1" "$file2" "$file3" ; do
if ! [ -f "$f" ] ; then
echo "Error: file $f does not exist"
exit 1
fi
done

    cat "$file1" "$file2" "$file3" > "$merged"
    echo "Files merged into $merged"

    # Open file descriptor 3 for reading the merged file
    exec 3< "$merged"
    echo "File descriptor 3 opened for $merged"

    # Optional: show the first few lines to confirm
    echo "First 5 lines of merged file:"
    head -n 5 <&3

    # Close the file descriptor (optional, if done)
    exec 3<&-
	
