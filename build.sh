mkdir -p /mnt/spotift-audio-cache

docker rm -f SpotISP

docker run --restart=always --name SpotISP \
       -v /var/tmp:/mnt/temp \
       -v /mnt/spotify-audio-cache:/spotify-audio-cache \
       -v $PWD/nginx.conf:/etc/nginx/nginx.conf:ro \
       -p 80:80 -it nginx
