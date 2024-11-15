FROM wordpress:cli

USER root
RUN apk add --no-cache git rsync openssh


RUN mkdir -p /tmp/wordpress/wp-content /tmp/wordpress/scripts && \
    chown -R www-data:www-data /tmp/wordpress

USER www-data

CMD ["wp", "shell"]
