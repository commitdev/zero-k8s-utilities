upstream db {
  server $DB_HOST:$DB_PORT;
}

server {
  listen $DB_PORT;
  proxy_pass db;
}