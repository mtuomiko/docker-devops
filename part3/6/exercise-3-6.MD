Frontend is built using Dockerfile commands from exercise 3.5. `API_URL` env var is added before build so it's included in the static build.

The static files are served from an `nginx:alpine` image from the default location `/usr/share/nginx/html/` and default port 80.

Run multi-stage built frontend with command (e.g.):

`docker run -it -p 5000:80 frontend-example-nginx`

