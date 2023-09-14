#!/bin/bash 
# Darrielle Evans
# Purpose of the script: Display system information that the user requests.


#while loop to run as long  as user wants to request information
while true; do
    
    echo "Sys Info Menu:"
    echo "1. Currently logged users"
    echo "2. Your Shell Directory"
    echo "3. Home Directory"
    echo "4. OS Name & Version"
    echo "5. Current Working Directory"
    echo "6. Number of Users Logged in"
    echo "7. Hard Disk Information"
    echo "8. CPU Information"
    echo "9. Memory Information"
    echo "10. File System Information"
    echo "11. Currently Running Process"
    echo "12. Exit"

    read -p "Choose a number that represents the system information you want to see: " userChoice

    case $userChoice in
        1)
         #command to show all users logged in to system
            who
            ;;
        2)
         #command to show your shell directory
            echo $SHELL
            ;;
        3)
         #command to show your home directory
            echo $HOME
            ;;
        4)
        #command to show operating system name & version
            lsb_release -a
            ;;
        5)
        #command to show current directory you are working in
            pwd
            ;;
        6)
        #command to show the number of users logged in
            who | wc -l
            ;;
        7)
        #command to show disk information
            df -h
            ;;
        8)
        #command to show cpu
            cat /proc/cpuinfo
            ;;
        9)
        #command memory information
            free -h
            ;;
        10)
        #command to show file system information
            df -T
            ;;
        11)
        #command to show current process
            ps aux
            ;;
        12)
        #command to exit the loop at users request
            break
            ;;
        *)
        #default if user chooses an invalid option
            echo "Invalid choice!"
            ;;
    esac
   #condition to stop the loop or keep it going
    read -p "Would you like to make another selection? Type yes/no: " choice2
    if [ "$choice2" != "yes" ]; then
        break
    fi
done
