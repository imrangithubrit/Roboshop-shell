echo -e "\e[33mCopying for Mongd.repo file \e[0m"
cp Mongod.repo /etc/yum.repos.d/mongodb.repo   &>>/tmp/roboshop.log
echo -e "\e[33m Installing the Mongodb file \e[0m"

yum install mongodb-org -y   &>>/tmp/roboshop.log

echo -e "\e[33m Enabling the fie \e[0m"
systemctl enable mongod   &>>/tmp/roboshop.log


echo -e "\e[33m restarting the mongodb \e[0m"


systemctl restart mongod   &>>/tmp/roboshop.log
 