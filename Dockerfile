FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add --no-cache flac perl lame
    
COPY flac2mp3.pl /
    
ENV FLAC='/mnt/flac' \
    MP3='/mnt/mp3'
    
CMD /flac2mp3.pl
ENTRYPOINT [$FLAC, $MP3]
