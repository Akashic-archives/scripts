cd main-website/
git pull
cd /var/www/html/
# defois rm -r *
sudo rsync -rvP /home/momo/main-website/html/ .
sudo systemctl restart nginx.service 
