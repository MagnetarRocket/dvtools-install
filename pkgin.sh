# One must enter in "su", "sudo -s", or "doas -u" in order for this to work.

pkgin update
yes | pkgin upgrade

yes | pkgin install motif ximaging xmhtml ted ddd xmcd mpv maim git glx-utils gv
# gv is here until xpopple is graguated as a stable package
# the xmhtml package is for a future web-browser of mine, said web-browser also is a heavy user of curl
cd ~
# this assumes there are no such files in the user directory already.

pwd
mkdir apps multimedia documents downloads .xfile
cd .xfile
mkdir icons
cd icons
curl https://fastestcode.org/dl/xfile-slanted-icons.tar.xz
tar -xf xfile-slanted-icons.tar.xz
pwd
cd /usr/share
pwd
mkdir mde-src
cd mde-src
echo "Installing from gitlab"
git clone https://gitlab.com/dvtools-public/DesktopManager.git
git clone https://gitlab.com/dvtools-public/Magnifier.git
git clone https://gitlab.com/dvtools-public/ScreenSnap.git
git clone https://gitlab.com/dvtools-public/Notifier.git
git clone https://gitlab.com/dvtools-public/MotifDialogs.git
git clone https://gitlab.com/dvtools-public/MediaPlayer.git
git clone https://gitlab.com/dvtools-public/WMutils.git
git clone https://gitlab.com/dvtools-public/TextEditor.git
git clone https://gitlab.com/dvtools-public/EMWM.git
echo "Installing from github"
# git clone https://github.com/alx210/xfile.git

# all of this assumes that the base dev uititles & x11 dev & utilties have allready been installed.

echo "If there were errors relating to installing the above git directories in /usr/share, that is expected."
echo "Attempting updates now"

echo "Updatting from gitlab"
git pull https://gitlab.com/dvtools-public/DesktopManager.git
git pull https://gitlab.com/dvtools-public/Magnifier.git
git pull https://gitlab.com/dvtools-public/ScreenSnap.git
git pull https://gitlab.com/dvtools-public/Notifier.git
git pull https://gitlab.com/dvtools-public/MotifDialogs.git
git pull https://gitlab.com/dvtools-public/MediaPlayer.git
echo "Updatting from github"

echo "installing"

cd DesktopManager
make
make install
cd ..

cd Magnifier
make
make install
cd ..

cd ScreenSnap
make
make install
cd ..

cd Notifier
make
make install
cd ..

cd MotifDialogs
make
make install
cd ..

cd MediaPlayer
make
make install
cd ..

cd ~

echo "exiting"
