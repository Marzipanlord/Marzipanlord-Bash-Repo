#! /bin/sh

mkdir Scripts/
clear
echo "Welcome to Fileman Utility"
echo "==========================================="
cd
ls
read -p "Would you like to create a new directory(y/N): " mknwdir
if [ "$mknwdir" = "y" ]; then
read -p "Enter new directory name: " nwdirnm
cd
mkdir $nwdirnm
sh ~/Scripts/Fileman.sh
else
read -p "Enter the directory you want to go to: " dir
if [ "$dir" = "q" ]; then
    exit
else
    read -p "Now enter what you want to do there: " opp
    cd
    cd $dir
    $opp
    read -p "Any more actions you want to do(y/N): " addactconf
    if [ "$addactconf" = "y" ]; then
        sh ~/Scripts/Fileman.sh
    else
        echo "Goodbye for now"
    fi
fi
fi
