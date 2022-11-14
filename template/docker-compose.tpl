version: \"3.9\"
services:
    wordpress:
        image: wordpress
        restart: always
        ports:
          - "80:80"
        environment:
            WORDPRESS_DB_HOST: ${db_host}
            WORDPRESS_DB_USER: ${db_user}
            WORDPRESS_DB_PASSWORD: ${db_password}
            WORDPRESS_DB_NAME: ${db_name}
        volumes:
          - wordpress:/var/www/html
volumes:
  wordpress:
