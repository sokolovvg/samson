apt-get update
apt-get -y upgrade
apt-get -y install apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
curl https://packages.sury.org/php/apt.gpg | apt-key add -
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
apt-get update
apt-get -y install vim wget htop tmux apache2 php5.6
systemctl stop apache2
sed -i "s/Listen 80/Listen 8888/" /etc/apache2/ports.conf
sed -i "s/*:80>/*:8888>/" /etc/apache2/sites-available/000-default.conf
systemctl start apache2
apt-get -y install nginx
