FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache flac perl lame

WORKDIR /app 
COPY . .

ENTRYPOINT ["/app/flac2mp3.pl"]
CMD ["/mnt/flac", "/mnt/mp3"]
