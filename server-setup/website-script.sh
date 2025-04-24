
sudo apt update
sudo apt upgrade
sudo apt install vim tmux git ranger btop stress tree time command-not-found ffmpeg sl neofetch iperf3 fzf uptimed fail2ban speedtest-cli vnstat
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

# setup website with nginx and everything before crontab, for now html website
# wget update-website.sh
# wget update-certbot.sh

# change files:
#
# /etc/nginx/nginx.conf
# in http {}
# personnal settings
# limit_req_zone $binary_remote_addr zone=mylimit:10m rate=10r/s;
# possible que j'oublie ca
#
# /etc/nginx/site-a/defaut
#
 location / {
		# First attempt to serve request as file, then
		# as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	        limit_req zone=limitbots burst=20 nodelay;

	}

	location ~* \.php$ {
    		return 444;
	}




