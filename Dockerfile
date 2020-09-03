FROM alpine:3.12 AS build

ENV SIEGE_VERSION=3.1.4

RUN apk update \
    && apk add curl g++ make \
    && curl http://download.joedog.org/siege/siege-${SIEGE_VERSION}.tar.gz > siege-${SIEGE_VERSION}.tar.gz \
    && tar -xf siege-${SIEGE_VERSION}.tar.gz \
    && cd siege-${SIEGE_VERSION} \
    && ./configure \
    && make install

FROM alpine:3.12

COPY --from=build /usr/local/bin/siege /usr/local/bin/siege.config /usr/local/bin/
RUN apk add --no-cache \
    mysql-client postgresql-client curl netcat-openbsd net-tools ca-certificates wireguard-tools \
    && rm -rf /var/cache/apk/* \
    siege.config
