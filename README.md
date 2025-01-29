# lampp_server
Web Server (APACHE, PHP8.0, PHP7.4.33, MySQL dan PHPMyAdmin) on Linux Debin With Docker

## 1. Download Directory and File
````
git clone https://github.com/otn4mrehus/lampp_server.git
````

## 2. Choose Option Directory
````
cd lampp8.0
    # or
cd lampp7.4.33  
````
## 3. Execute docker with Build stack 'project' 
````
docker-compose -p 'lampp' up --build --remove-orphans
````
## 4. Execute docker with Stop stack 'project' with paramater option
````
docker-compose -p 'lampp' down -v --remove-orphans
docker-compose -p 'lampp' stop | Start | restart
````
## 5. Running browser
````
http://localhost:2000   ## Web app ##
http://localhost:2001   ## Web phpmyadmin ##
### username : root
### password : password
````

