read -p "Enter the directory path: " dir

# Check if the directory exists
if [ -d "$dir" ]; then
    # List all files in the directory
    echo "Files in directory $dir:"
    ls -l $dir
else
    # Directory does not exist
    echo "The directory $dir does not exist."
fi



