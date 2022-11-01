# `Ticket_Booking Web Application` Installation with docker and Jenkins.

Release linux server and install Jenkins and Docker

```sh
yum update -y
yum install docker -y
systemctl enable docker
systemctl start docker
yum install pip -y
pip install docker-py
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
yum install git -y
```
Make app directory and add Application files using git clone
```sh
rm -rf /opt/ticketbooking/*
mkdir /opt/ticketbooking
cd /opt/ticketbooking
git clone https://github.com/Raam043/Ticket_Booking.git
cp /opt/ticketbooking/Ticket_Booking/* /opt/ticketbooking
```
Build Docker images and Run container (1st run )
```sh
dokcer build -t ticketbooking .
docker run --name ticketbooking -d -p 443:80 ticketbooking
```
Build Docker images and Run container (2nd run )
```sh
docker stop ticketbooking
docker rm -f ticketbooking
dokcer image rm -f ticketbooking
dokcer build -t ticketbooking .
docker run --name ticketbooking -d -p 443:80 ticketbooking
```

