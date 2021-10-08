FROM busybox:latest
ENV PORT=8000

ADD index.html /www/index.html

EXPOSE $PORT

HEALTHCHECK CMD nc -z localhost $PORT

CMD sed -i "s/MESSAGE/$MESSAGE/g" /www/index.html && echo "server started" && trap "exit 0;" TERM INT; httpd -v -p $PORT -h /www -f & wait
