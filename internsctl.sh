#!/bin/bash

case "$1" in
    --help)
        echo "Usage: internsctl [OPTION]..."
        echo "Options:"
        echo "  --help          Display this help and exit"
        echo "  --version       Output version information and exit"
        echo "  cpu getinfo     Display CPU information (similar to lscpu)"
        echo "  memory getinfo  Display memory information (similar to free)"
        echo "  user create     Create a new user (provide username as argument)"
        echo "  user list        List all regular users"
        echo "  user list --sudo-only  List users with sudo permissions"
        echo "  file getinfo     Get information about a file (provide filename as argument)"
        echo "  file getinfo [OPTIONS] <file-name>"
        echo "    --size, -s          Print file size"
        echo "    --permissions, -p   Print file permissions"
        echo "    --owner, -o         Print file owner"
        echo "    --last-modified, -m Print last modified time"
        ;;
    
    --version)
        echo "internsctl v0.1.0"
        ;;

    cpu)
        if [ "$2" == "getinfo" ]; then
            lscpu
        else
            echo "Error: Invalid cpu command. Use internsctl --help for usage."
        fi
        ;;

    memory)
        if [ "$2" == "getinfo" ]; then
            free
        else
            echo "Error: Invalid memory command. Use internsctl --help for usage."
        fi
        ;;

    user)
        if [ "$2" == "create" ]; then
            if [ -z "$3" ]; then
                echo "Error: Missing username. Use internsctl --help for usage."
            else
                sudo useradd -m "$3"
                echo "User $3 created successfully."
            fi
        elif [ "$2" == "list" ]; then
            if [ "$3" == "--sudo-only" ]; then
                getent group sudo | cut -d: -f4
            else
                getent passwd | cut -d: -f1
            fi
        else
            echo "Error: Invalid user command. Use internsctl --help for usage."
        fi
        ;;

    file)
        if [ "$2" == "getinfo" ]; then
            filename="$3"
            if [ -z "$filename" ]; then
                echo "Error: Missing filename. Use internsctl --help for usage."
            else
                shift 3
                while [ "$#" -gt 0 ]; do
                    case "$1" in
                        --size | -s)
                            stat -c%s "$filename"
                            ;;
                        --permissions | -p)
                            stat -c%a "$filename"
                            ;;
                        --owner | -o)
                            stat -c%U "$filename"
                            ;;
                        --last-modified | -m)
                            stat -c%y "$filename"
                            ;;
                        *)
                            echo "Error: Invalid option. Use internsctl --help for usage."
                            ;;
                    esac
                    shift
                done
            fi
        else
            echo "Error: Invalid file command. Use internsctl --help for usage."
        fi
        ;;

    *)
        echo "Error: Invalid command. Use internsctl --help for usage."
        ;;
esac
