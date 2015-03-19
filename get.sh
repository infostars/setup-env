yum install git -y -q
git clone https://github.com/infostars/setup-env /tmp/setup-env
yum remove git -y -q
cd /tmp/setup-env
./setup.sh
