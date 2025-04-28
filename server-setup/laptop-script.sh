
sudo apt update
sudo apt install vim tmux git ranger git-man wget curl btop grep bash-completion zip unzip gzip python3.8 debian-cd debianutils coreutils diffutils dirmngr make cmake cmake-data man-db manpages manpages-dev tldr feh file foremost binwalk ncdu lsof iftop iotop powertop stress build-essential tar tree time testdisk nautilus duplicity i3lock gimp dkms dpkg dpkg-dev chromium-browser exfat-utils emacs libreoffice less head g++ gcc cpp crunch baobab command-not-found automake autopsy catdoc ffmpeg iproute2 java-common logsave qbittorrent unattended-upgrades upower cmatrix caca-utils sl sed awk whereami parallel vlc cowsay oneko lolcat fortune-mod fortunes-min fakeroot info john apache2 livebuild flatpak xsnow neofetch fastfetch neowofetch iperf3 ethtool sysstat ccze units fzf uptimed cryptsetup vnstat ntp wireguard resolvconf ccache

# brave install
curl -fsS https://dl.brave.com/install.sh | sh

# xfce4-terminal install
sudo apt install xfce4-terminal
cp config-files/terminalrc ~/.config/xfce4/terminal/terminalrc
# unlimited scrollback, show unsafe past dialog, transparent background, opacity 0.58, display menubar in new windows, display borders around new windows
# TODO: finish dot files

# compile kernel last stable (14 for now, TODO: to automate (variables))
sudo apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison make menuconfig packaging-dev
mkdir kernel-compilation
cd kernel-compilation
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.14.1.tar.xz
tar -xf linux-6*
cd linux*
# TODO: change to latest config file
# cp /boot/config-6.1.0-32-amd64 .config
make distclean
make olddefconfig
# TODO: fill config file auto
nice make -j`nproc` bindeb-pkg
# TODO: figure out how to install it




tlp (battery management)
stress (stress cpu/gpu)
cmatrix oneko sl fortune cowsay lolcat espeak funny\ manpages toilet xsnow
aafire
htop
hddtemp
lm-sensors
freon
magemagick-6.q16
pipes.sh
imgcat
curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/master/tree-EN.sh | bash


openshot-qt
vitals
ext4-terminal
gimp
ranger
fail2ban
grub-customizer
curl
binwalk
hexdump
discord
obs
wireshark


sudo apt install vim tmux git ranger btop stress tree time command-not-found ffmpeg sl neofetch iperf3 fzf uptimed cryptsetup fail2ban instaloader speedtest-cli
sudo apt autoremove

ssh-keygen -t ed25519 -a 100
ssh-copy-id momo.local
echo "10.0.0.203     desktop" | sudo tee -a /etc/hosts > /dev/null
ssh-copy-id desktop
ssh-copy-id mhamed.dev
# ssh-copy-id momo.local into rasp.local
# ssh-copy-id desktop into rasp.local

echo -e "*/20 * * * * speedtest-cli --csv >> /home/momo/speedtest/speedtest.csv\n*/20 * * * * curl icanhazip.com > /home/momo/ip.txt && scp /home/momo/ip.txt mhamed.dev:home-ip.txt" | crontab -

scp momo.local:test/rasp/home/momo/ip.txt .
scp momo.local:test/rasp/home/momo/speedtest.sh .
scp momo.local:test/rasp/home/momo/rsync.sh .
scp momo.local:test/rasp/home/momo/.bash_aliases .

sudo mkdir /media/momo
sudo chown momo /media/momo

lsblk
sudo mount /dev/sda1 /media/momo

sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local # to change to a file on the internet genre github
sudo vim /etc/fail2ban/jail.local
# bantime increment
# bantime rnd
# bantime factor
# bantime formula
echo -e "[sshd]\nbackend=systemd\nenabled=true" | sudo tee /etc/fail2ban/jail.local
sudo systemctl restart fail2ban.service

# install yt-dlp, no idea how, scp?



sudo apt update
sudo apt upgrade
sudo apt install vim tmux git ranger btop stress tree time command-not-found ffmpeg sl neofetch iperf3 fzf uptimed fail2ban speedtest-cli
sudo apt autoremove

# ssh to add if needed, to modify
echo "ssh-copy-id rasp.local form devices that need it."

echo "*/20 * * * * speedtest-cli --csv >> /home/momo/speedtest/speedtest.csv" | crontab -

# sudo add to crontab for sudo:
# * * * * * cat /var/log/nginx/access.log > /home/momo/access.log; cat /var/log/nginx/error.log > /home/momo/error.log; awk '{print $1}' /home/momo/access.log | uniq > /home/momo/ip.txt
# aussi choisir si je garde la derniere commande

sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local # to change to a file on the internet genre github
sudo vim /etc/fail2ban/jail.local
# bantime increment
# bantime rnd
# bantime factor
# bantime formula
echo -e "[sshd]\nbackend=systemd\nenabled=true" | sudo tee /etc/fail2ban/jail.local
sudo systemctl restart fail2ban.service

# install yt-dlp, no idea how, scp?


# TODO: determiner si j'ai besoin d'un script windows
# overwolf et curseforge pour minecraft mod

