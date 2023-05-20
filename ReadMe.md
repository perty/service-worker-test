# Service worker test

This is for me learning about service workers and notifications.

The goal is to have a local environment where I can try service worker related things, notifications in particular. 

I like to write as many notes as possible to keep my learnings.

## A local server with https

Service workers are only available when using https, one reason being that they can intercept network traffic.

### Certificate

So the first thing is to set up a server that serves pages by https. To do that, we first need a certificate. I opted for [mkcert](https://github.com/FiloSottile/mkcert#installation).

There is an installation file for Mac using brew: `installt-mkcert.sh`.

Then head to the `cert` folder and run `cert-here.sh`. This will create necessary files for the server.

### Server

To run a server, there are several options, [http-server](https://www.npmjs.com/package/http-server) being a very simple one.

Start the server with `start-server.sh`. The page should show up on [https://localhost:8080](https://localhost:8080).

## Notifications

Not as easy as it seemed when I started to look at it. A great promise by PWA to be able to send notifications. But wait, some notifications are local and some are remote. And the remote ones, initiated from the server, requires the push API. 

