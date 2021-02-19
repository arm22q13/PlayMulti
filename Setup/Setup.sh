#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ANSWR="-i"
echo $DIR
mkdir ~/Cpp
read -p "Ask for individual confirmation when overwriting existing files? " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
ANSWR=" "
fi
echo " "
cp $ANSWR -r $DIR/SourceCode/PlayVideo ~/Cpp
cp $ANSWR -r $DIR/SourceCode/ShutDown ~/Cpp
cp $ANSWR $DIR/StartVideos.sh ~/
cp $ANSWR $DIR/CheckStopButton.sh ~/
mkdir ~/.config/autostart
cp $ANSWR $DIR/Startup/AutoStart.desktop  ~/.config/autostart/
cp $ANSWR $DIR/Startup/StopButton.desktop  ~/.config/autostart/
sudo cp $ANSWR $DIR/Bin/ShutDown /usr/bin
sudo cp $ANSWR $DIR/Bin/PlayVideo /usr/bin
echo "Changing permission settings for .sh scripts"
chmod ug+x ~/StartVideos.sh
chmod ug+x ~/CheckStopButton.sh
echo "Backing up Profile file as OLDprofile in /pi"
sudo cp $ANSWR /etc/profile ~/OLDprofile
awk -f $DIR/AppendVariables.awk /etc/profile > ~/profile.tmp
sudo cp $ANSWR ~/profile.tmp /etc/profile 
echo "Added environtental variables to profile if not already existing"
cd /usr/bin/
echo "Changing ownership and permissions of PlayVideo and ShutDown."
sudo chown $USER PlayVideo
sudo chown $USER ShutDown
sudo chmod u+x PlayVideo
sudo chmod u+x ShutDown
sudo apt-get install codeblocks
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl