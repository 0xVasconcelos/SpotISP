# SpotISP
Spotify cache server for ISP's

With this project you can provide a cache server for the Spotify mobile App.


## Why?

Hacking purpose. I have a lot of devices that use Spotify service, so, why I need to download every track on any single device? I know that Spotify uses range based requests, but with "local CDN" I get a lot faster streaming start.

## Use cases

If you have a ISP, you can setup my project on a server with dedicated resources to cache Spotify audio files to get a better performance for your customers. 

## Limitations

So, this only works on endpoints that are http based, most mobile endpoints works, except the Web Player of Spotify that are https based.


## Installing

You need install Docker, or put the nginx.conf on your nginx server.


```
git clone https://github.com/lucaslg26/SpotISP

cd spotisp

mkdir -p /mnt/spotift-audio-cache

docker run --restart=always --name SpotISP \
       -v /var/tmp:/mnt/temp \
       -v /mnt/spotify-audio-cache:/spotify-audio-cache \
       -v $PWD/nginx.conf:/etc/nginx/nginx.conf:ro \
       -p 80:80 -it nginx

```

## DNS List of compatible endpoints

- audio-sp-atl.spotify.com
- audio-cf.spotify.com
- audio-fac.spotify.com
- audio-ak.spotify.com.edgesuite.net
- audio4-ak.spotify.com.edgesuite.net
- heads-cf.spotify.com *


Point all of theses entries to your local server. Please send a pull requst if you find a new compatible one.

* head server, send the first 3 seconds of a song.

## Tested

- macOs App
- Android App

## Not tested

- iOs App

