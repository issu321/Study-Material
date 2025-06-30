while true; do
    echo "Choose an option:"
    echo "1. List files and directories (ls)"
    echo "2. Copy file (cp)"
    echo "3. Move or rename file (mv)"
    echo "4. Remove file (rm)"
    echo "5. Change file permissions (chmod)"
    echo "6. Change directory (cd)"
    echo "7. Create directory (mkdir)"
    echo "8. Remove directory (rmdir)"
    echo "9. Print current working directory (pwd)"
    echo "10. Exit"

    read -p "Enter your choice (1-10): " choice

    case $choice in
        1)
            # List files and directories
            echo "Listing files and directories:"
            ls
            ;;
        2)
            # Copy file
            read -p "Enter the source file: " src
            read -p "Enter the destination file: " dest
            cp $src $dest
            echo "File copied from $src to $dest"
            ;;
        3)
            # Move or rename file
            read -p "Enter the source file or directory: " src
            read -p "Enter the destination file or directory: " dest
            mv $src $dest
            echo "Moved/Renamed from $src to $dest"
            ;;
        4)
            # Remove file
            read -p "Enter the file to remove: " file
            rm $file
            echo "File $file removed."
            ;;
        5)
            # Change file permissions
            read -p "Enter the file or directory: " file
            read -p "Enter the permissions (e.g., 755): " perm
            chmod $perm $file
            echo "Permissions of $file changed to $perm"
            ;;
        6)
            # Change directory
            read -p "Enter the directory to change to: " dir
            cd $dir
            echo "Changed to directory: $dir"
            ;;
        7)
            # Create directory
            read -p "Enter the directory name to create: " dir
            mkdir $dir
            echo "Directory $dir created."
            ;;
        8)
            # Remove directory
            read -p "Enter the directory name to remove: " dir
            rmdir $dir
            echo "Directory $dir removed."
            ;;
        9)
            # Print working directory
            echo "Current working directory: $(pwd)"
            ;;
        10)
            # Exit the script
            echo "Exiting script."
            break
            ;;
        *)
            echo "Invalid option, please try again."
            ;;
    esac

    echo ""
done
