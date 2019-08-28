#Angular 2
FROM alpine:latest
RUN apk update
RUN apk fix
RUN apk add python
RUN apk add nodejs
RUN apk add nodejs-npm
RUN npm install -g node-gyp
RUN npm install -g --unsafe-perm --verbose angular/cli@0.1.0
RUN npm install -g typescript
#RUN chown -R 777 /usr/lib/node_modules/
#RUN npm install -g --unsafe-perm node-sass
#RUN mkdir -p /var/opt/angular
CMD ["/bin/sh"]
