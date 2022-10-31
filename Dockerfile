FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache flac perl lame
    
COPY flac2mp3.pl /
    
ENTRYPOINT /flac2mp3.pl
