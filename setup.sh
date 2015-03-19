echo "Copying repo files"
cp -f repo/*.repo /etc/yum.repos.d/
echo "Creating wiw-java startup script..."
cp -f scripts/java.sh /etc/profile.d/
chmod +x /etc/profile.d/java.sh
echo "Installing epel-release..."
yum install -y epel-release
echo "Installing vortex repo..."
yum install -y http://vortex-rpm.org/el6/noarch/vortex-release-6-1.vortex.el6.noarch.rpm
echo "Installing ius-release repo..."
yum install -y http://dl.iuscommunity.org/pub/ius/stable/CentOS/6/x86_64/ius-release-1.0-13.ius.centos6.noarch.rpm
echo "Installing Google Chrome..."
chmod +x scripts/install_chrome.sh
./scripts/install_chrome.sh -q
echo "Installing PHP5.5 ZTS..."
yum install -y php55t php55t-dba php55t-soap php55t-recode php55t-xmlrpc php55t-common php55t-pgsql php55t-opcache php55t-pear php55t-pecl-xdebug php55t-fpm php55t-pecl-raphf php55t-mcrypt php55t-litespeed php55t-pecl-propro php55t-pecl-jsonc php55t-imap php55t-pecl-pthreads php55t-gmp php55t-process php55t-interbase php55t-pecl-mongo php55t-intl php55t-embedded php55t-pdo php55t-pecl-gearman php55t-mysqlnd php55t-pecl-redis php55t-pecl-apcu php55t-pecl-memcached php55t-pspell php55t-pecl-ssh2 php55t-mbstring php55t-xml php55t-mssql php55t-pecl-pecl_http php55t-tidy php55t-snmp php55t-pecl-amqp php55t-enchant php55t-bcmath php55t-cli php55t-gd php55t-odbc php55t-pecl-opengl php55t-pecl-lzf php55t-ldap
echo "Installing memcached server..."
yum install -y memcached
echo "Installing RabbitMQ..."
yum install -y rabbitmq-server
echo "Installing MongoDB..."
yum install -y mongodb-org
echo "Installing Git18..."
yum install -y git18
