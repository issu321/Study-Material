FILE="sample.txt"

# Display the contents of the file using cat
echo "Contents of the file using cat:"
cat $FILE
echo "---------------------------------"

# Display the contents of the file using more (page-by-page view)
echo "Contents of the file using more (press 'q' to quit):"
more $FILE
echo "---------------------------------"

# Display the first 10 lines of the file using head
echo "First 10 lines of the file using head:"
head $FILE
echo "---------------------------------"

# Display the last 10 lines of the file using tail
echo "Last 10 lines of the file using tail:"
tail $FILE
echo "---------------------------------"

# Search for a specific word (e.g., 'error') in the file using grep
echo "Lines containing 'error' using grep:"
grep "error" $FILE
echo "---------------------------------"

# Compare two files using cmp
echo "Comparing the contents of the file with another file (file2.txt):"
cmp $FILE file2.txt
echo "---------------------------------"



