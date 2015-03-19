echo "Creating wiw-java repo file..."
cp -f repo/wiw-java.repo /etc/yum.repos.d/
echo "Creating wiw-java startup script..."
cp -f scripts/java.sh /etc/profile.d/
chmod +x /etc/profile.d/java.sh
echo "Installing epel-release..."
yum install -y epel-release
echo "Installing vortex repo..."
yum install -y http://vortex-rpm.org/el6/noarch/vortex-release-6-1.vortex.el6.noarch.rpm
echo "Installing ius-release repo..."
yum install -y http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-13.ius.centos6.noarch.rpm
echo "Installing PHP5.5 ZTS"
yum install -y php55t*
echo "Installing memcached server"
yum install -y memcached
echo "Installing RabbitMQ"
yum install -y rabbitmq-server
echo "Installing MongoDB"
yum install -y mongodb
