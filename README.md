# flask_4_databases_mysql_vm
504 HW 4b

## VM on Azure
Sign in to azure, select virtual machine  
Choose a resource group, give the machine the name CheviMySQLhw4b  
Choose the East US region and standard security  
Size is Standart B1ms for $15.11/month  
select Password, and then choose username cebbin and password  
select HTTP, HTTPS and SSH inbound ports  
Select disks, no changes made    
Select delete public IP and NIC when VM is deleted   
Enable Auto Shutdown, put in 11:59:00 Eastern Time  
No changes or additions in Monitoring, Advanced, Tags    
Review and Create  
Confirm the low cost of $0.0207 per hour  
Create.    
Public IP address is 20.62.172.72  

![Screen Shot 2023-10-11 at 16 34 21](https://github.com/chebbin/flask_4_databases_mysql_vm/assets/141374142/ce930913-43cd-4637-b94a-1ec24ad7491a)


## MySQL Setup Process
In google shell ssh cebbin@20.62.172.72  
Continue connecting- yes  
ssh cebbin@20.62.172.72  
password  
Google shell shows that the local computer is connected to virtual machine CheviMySQLhw4b  
sudo apt install mysql-client mysql-server  
sudo mysql  
in mysql create user 'chevi'@'%' identified by 'Shlomit1111!';  
grant all privileges on *.* to 'chevi'@'%' with grant option;    
Go back to azure and add import inbound security rule, choose MySQL service for port 3306, Add.    
Go back to shell to change bind address to 0.0.0.0.    
Save changes in nano with Control O  
Connect to MySQL workbench  

![Screen Shot 2023-10-12 at 00 57 00](https://github.com/chebbin/flask_4_databases_mysql_vm/assets/141374142/1ab93480-f3ed-4cc1-be52-928ee8a7f416)

## Database created on MySql Workbench
Created sql file for database chevihw  
Two tables- giftlist and guestlist  
One to many schema chosen as one guest can provide more than one gift  

![Screen Shot 2023-10-12 at 08 54 01](https://github.com/chebbin/flask_4_databases_mysql_vm/assets/141374142/7647b8eb-1b29-4ed7-93dc-549e312ee4f2)

## VM on GCP
Select project called chevi-504-hw4
Compute Engine, and then create instance  
Name the instance chevi-504-hw4b
Choose default iowa server  
Choose low cost machine configuration E2
Choose shared-core and e2-small machine type  
Firewall allow HTTP and HTTPS traffic  
Create. 
External IP is 34.135.93.65

![Screen Shot 2023-10-11 at 16 33 29](https://github.com/chebbin/flask_4_databases_mysql_vm/assets/141374142/db0b6188-3f9b-49b5-bae6-4cf324f31802)
