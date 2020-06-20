# kimchi-centos7.sh
该脚本是实现一键搭建kimchi服务，适用版本centos7，其它版本脚本会持续更新...

<h1>如何运行脚本？</h1>
<pre>chmod +x kimchi-centos7.sh
bash kimchi-centos7.sh
</pre>


<h1>脚本一键部署不成功？</h1>
<p>如果安装不成功，可以根据下面步骤走一遍。</p>

<h3>安装KVM包</h3>
<pre>yum install -y qeum-kvm qemu-kvm-tools virt-manager libvirt virt-install </pre>

<h3>下载websockify源</h3>
<pre>yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm</pre>


<h3>安装wok运行环境依赖和kimchi依赖</h3>
<pre>yum install apt install -y python3-pip
yum install -y gcc make autoconf automake git python3-pip python3-requests python3-mock gettext pkgconf xsltproc python3-dev pep8 pyflakes python3-yaml
yum install -y systemd logrotate python3-psutil python3-ldap python3-lxml python3-websockify python3-jsonschema openssl nginx python3-cherrypy3 python3-cheetah python3-pampy python-m2crypto gettext python3-openssl</pre>

<h3>安装wokd服务</h3>
<pre>wget https://github.com/kimchi-project/kimchi/releases/download/2.5.0/wok-2.5.0-0.el7.centos.noarch.rpm
yum install -y ./wok-2.5.0-0.el7.centos.noarch.rpm</pre>

<h3>安装kimchi服务</h3>
<pre>wget https://github.com/kimchi-project/kimchi/releases/download/2.5.0/kimchi-2.5.0-0.el7.centos.noarch.rpm
yum install -y ./kimchi-2.5.0-0.el7.centos.noarch.rpm</pre>

<h3>启动下面这些服务</h3>
<pre>systemctl start nginx
systemctl start wokd
systemctl enable wokd
systemctl start libvirtd
systemctl enable libvirtd</pre>

<h3>防火墙设置</h3>
<pre>sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --add-port=8001/tcp --permanent
sudo firewall-cmd --reload
</pre>


<h3>用法</h3>
<pre>浏览器访问 https：//localhost:8001</pre>
