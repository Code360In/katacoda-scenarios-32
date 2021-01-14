wget https://downloads.mysql.com/docs/sakila-db.zip

unzip sakila-db.zip

docker cp  sakila-db/ mysql:/

docker exec  mysql mysql -u root -p12345 -e 'SOURCE /sakila-db/sakila-schema.sql'

docker exec  mysql mysql -u root -p12345 -e 'SOURCE /sakila-db/sakila-data.sql'

