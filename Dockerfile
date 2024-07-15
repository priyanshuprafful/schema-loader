FROM            dokken/centos-8
RUN             cd /etc/yum.repos.d/
RUN             sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN             sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN             yum update -y
RUN             yum install epel-release -y 
COPY            mongo.repo /etc/yum.repos.d/mysql.repo
RUN             yum install git mysql mongo-org-shell -y
COPY            run.sh /
ENTRYPOINT      [ "bash", "/run.sh" ]