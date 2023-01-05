FROM neilpang/acme.sh

RUN apk add --no-cache docker-cli
ADD start-acme.sh /start-acme.sh
EXPOSE 80/tcp
ENTRYPOINT ["/start-acme.sh"]
CMD ["daemon"]
