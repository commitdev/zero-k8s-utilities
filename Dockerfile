FROM alpine:3.12

## Includes postgresql and mysql (CLIENT ONLY)
## gettext includes `envsubst` for env sub (used as templating engine in this case)
RUN apk add --no-cache mysql-client postgresql-client gettext openrc


# ## [WIP] Database proxy 
# ADD root /
# COPY ./nginx-conf /etc/nginx/stream.conf.d/
# COPY ./docker-entrypoint.sh ./docker-entrypoint.sh
# # to be passed in
# # ENV DB_HOST=foo.bar 
# # ENV DB_PORT=3306
# ENTRYPOINT ["./docker-entrypoint.sh"]
# VOLUME [ "/sys/fs/cgroup" ]
# RUN mkdir -p /run/openrc \ 
#   && touch /run/openrc/softlevel

# CMD ["tail", "-f" ,"/dev/null"]
