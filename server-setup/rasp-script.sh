
sudo apt update
sudo apt upgrade
sudo apt install vim tmux git ranger btop stress tree time command-not-found ffmpeg sl neofetch iperf3 fzf uptimed cryptsetup fail2ban instaloader speedtest-cli vnstat
sudo apt autoremove

ssh-keygen -t ed25519 -a 100
ssh-copy-id momo.local
echo "10.0.0.203     desktop" | sudo tee -a /etc/hosts > /dev/null
ssh-copy-id desktop
ssh-copy-id mhamed.dev
# ssh-copy-id momo.local into rasp.local
# ssh-copy-id desktop into rasp.local
# ssh-copy-id framework into rasp.local

echo -e "*/20 * * * * speedtest-cli --csv >> /home/momo/speedtest/speedtest.csv\n*/20 * * * * curl icanhazip.com > /home/momo/ip.txt && scp /home/momo/ip.txt mhamed.dev:home-ip.txt" | crontab -

scp momo.local:test/rasp/home/momo/ip.txt .
scp momo.local:test/rasp/home/momo/speedtest.sh .
scp momo.local:test/rasp/home/momo/rsync.sh .
scp momo.local:test/rasp/home/momo/.bash_aliases .

sudo mkdir /media/momo
sudo chown momo:momo /media/momo

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

# install yt-dlp
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux_aarch64
mv yt-dlp_linux_aarch64 yt-dlp
chmod +x yt-dlp
sudo mv yt-dlp /usr/local/bin/


# unblock the voltage limit, for now manually, 
# TODO: find a way to do it automatically
sudo raspi-config

