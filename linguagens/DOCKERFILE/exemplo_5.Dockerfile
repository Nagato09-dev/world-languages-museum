FROM alpine
COPY script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh