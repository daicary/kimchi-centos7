yum install -y qeum-kvm qemu-kvm-tools virt-manager libvirt virt-install 
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install git python-pip libvirt-python libxml2-python python-websockify supervisor nginx
yum install apt install -y python3-pip
yum install -y gcc make autoconf automake git python3-pip python3-requests python3-mock gettext pkgconf xsltproc python3-dev pep8 pyflakes python3-yaml
yum install -y systemd logrotate python3-psutil python3-ldap python3-lxml python3-websockify python3-jsonschema openssl nginx python3-cherrypy3 python3-cheetah python3-pampy python-m2crypto gettext python3-openssl
wget https://github.com/kimchi-project/kimchi/releases/download/2.5.0/wok-2.5.0-0.el7.centos.noarch.rpm
yum install -y ./wok-2.5.0-0.el7.centos.noarch.rpm
wget https://github.com/kimchi-project/kimchi/releases/download/2.5.0/kimchi-2.5.0-0.el7.centos.noarch.rpm
yum install -y ./kimchi-2.5.0-0.el7.centos.noarch.rpm
systemctl start nginx
systemctl enable nginx
systemctl start wokd
systemctl enable wokd
systemctl start libvirtd
systemctl enable libvirtd
sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --add-port=8001/tcp --permanent
sudo firewall-cmd --reload
systemctly stop firewalld
systemctly disable firewalld.service
setenforce 0
