echo -e "\e[33mInatalling Nginx server\e[0m"
yum install nginx -y  &>>/tmp/roboshop.log

echo -e "\e[33mremoving old app content\e[0m"
rm -rf /usr/share/nginx/html/*  &>>/tmp/roboshop.log
echo -e "\e[33mdownloading Frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip  &>>/tmp/roboshop.log


cd /usr/share/nginx/html  &>>/tmp/roboshop.log
unzip /tmp/frontend.zip    &>>/tmp/roboshop.log




systemctl enable nginx  &>>/tmp/roboshop.log

systemctl restart nginx  &>>/tmp/roboshop.log