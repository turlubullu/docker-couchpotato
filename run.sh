docker run --restart=always -d -h VEGETA \
    --name couchpotato \
    -p 5050:5050 \
    --link transmission:transmission --link plex:plex \
    -e PUID=104 -e PGID=109 \
    -v /dev/rtc:/dev/rtc:ro \
    -v /docker-data/couchpotato:/config \
    -v /poolmirror1/movies:/movies \
    -v /poolmirror1/DLs:/downloads \
    -v /poolmirror1:/poolmirror1 \
    -v /poolmirror2:/poolmirror2 \
    couchpotato
