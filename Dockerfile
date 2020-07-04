FROM alpine:edge

ENV SQUID_CACHE_DIR=/var/spool/squid \
    SQUID_LOG_DIR=/var/log/squid \
    SQUID_USER=squid \
    SQUID_PORT=3128

RUN apk update &&\
    apk add --no-cache bash squid apache2-utils

# Copy Config
COPY squid.conf /etc/squid/squid.conf
RUN chmod 755 /etc/squid/squid.conf

# Copy Password
COPY passwd /etc/squid/passwd
RUN chmod 755 /etc/squid/passwd

# Atur Ulang
# RUN mkdir -p $SQUID_CACHE_DIR &&\
#    chown -R $SQUID_USER:$SQUID_USER $SQUID_CACHE_DIR

EXPOSE $SQUID_PORT/tcp
CMD ["squid", "-N"]