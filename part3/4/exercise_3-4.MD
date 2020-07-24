Backend and frontend Dockerfiles modified to include adding user, changing owner for a relevant folder and changing current user.

`chown` could have been run recursively on `/app` folder in both apps but was time consuming because of `node_modules` folder and changing the user before the install phase seemed like calling for trouble. Instead backend had `chown app /app/node_modules` and frontend had `chown app /app` which seemed to satisfy any folder creation requirements of the programs.

Run images with typical commands:

`docker run -it -p 5000:5000 frontend-example-user`

`docker run -it -p 8000:8000 backend-example-user` (doesn't include logs bind mount for backend)

