#############################
#Author: Levin(雷学委)
#############################


yum update 

yum -y install wget

#use ali yum repo
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

yum -y install vim

yum -y install java-1.8.0-openjdk


