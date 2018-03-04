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

TO DO

## DNS List of compatible endpoints

- audio-sp-atl.spotify.com
- audio-cf.spotify.com
- audio-fac.spotify.com
- audio-ak.spotify.com.edgesuite.net
- audio4-ak.spotify.com.edgesuite.net


Point all of theses entries to your local server. Please send a pull requst if you find a new compatible one.

## Tested

- macOs App
- Android App

## Not tested

- iOs App

