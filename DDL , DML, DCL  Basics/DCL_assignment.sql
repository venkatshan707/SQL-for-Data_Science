
#creating new user called with amit with passowrd expire in first login
create user 'amit'@'localhost' identified by 'Amit123' password expire;

#creating two databases
create database uat;
create database prod;

#assignoing rights to the user Amit
grant select on prod.* to  'amit'@'localhost';
grant select, create , alter, drop, insert, update,delete on uat.* to   'amit'@'localhost';

#Revoking Previllages from user
revoke select on prod.* from 'amit'@'localhost';
revoke select, update, drop, insert, delete , alter , create on uat.* from 'amit'@'localhost';
