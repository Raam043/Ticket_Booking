# `Ticket_Booking Web Application` Installation with docker and Jenkins.

Directly you can run this app by using docker images pls visit my DcokerHub account => **[raam043](https://hub.docker.com/u/raam043)**
```sh
docker run --name ticketbk -d -p 80:80 raam043/ticket-booking
```

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

Build Docker images and Run container 
```sh
docker stop ticketbooking
docker rm -f ticketbooking
docker image rm -f ticketbooking
docker build -t ticketbooking .
docker run --name ticketbooking -d -p 443:80 ticketbooking
```
Open New tab with `Server_Public_IP:443`

Output

![image](https://user-images.githubusercontent.com/111989928/199218362-0410e819-7172-4dc7-8b37-355eb89e22eb.png)


Output after given input
![image](https://user-images.githubusercontent.com/111989928/199218629-b2c6a949-3449-4731-bd34-2f5afdc1381c.png)



