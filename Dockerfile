FROM            dokken/centos-8
RUN             yum install epel-release -y
COPY            mongo.repo /etc/yum.repos.d/mysql.repo
RUN             yum install git mysql mongo-org-shell -y
COPY            run.sh /
ENTRYPOINT      [ "bash", "/run.sh" ]