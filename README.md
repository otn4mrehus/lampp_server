# lampp_server
Web Server (APACHE, PHP8.0, PHP7.4.33, MySQL dan PHPMyAdmin) on Linux Debian With Docker
## 0 . Direktori Structure
````
lampp-server/
│── .env                # File containing environment variables (for Docker Compose)
│── docker-compose.yml  # Docker Compose configuration file
│── db_data/            # Directory for MySQL data persistence
└── www/                # Project directory for your PHP application

````

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
````
mkdir -p db_data www \
chmod -R www \
echo "<?php phpinfo(); ?>" > www\index.php
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

