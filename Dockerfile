FROM alpine:3.12

## Includes postgresql and mysql (CLIENT ONLY)
RUN apk add --no-cache mysql-client postgresql-client 
