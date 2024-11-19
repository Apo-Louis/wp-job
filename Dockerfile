FROM wordpress:cli

USER root
RUN apk add --no-cache git rsync openssh


RUN mkdir -p /wordpress && \
    chown -R www-data:www-data /wordpress

WORKDIR /wordpress

USER www-data

CMD ["wp", "shell"]
