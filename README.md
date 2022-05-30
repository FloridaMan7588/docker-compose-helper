# docker-compose-helper
 
 Literally idk why I made this, but its a docker container to deploy a docker compose stack. Dumb because you can just
 ```
 docker-compose up -d
 ```
 but like why not.

 ## Deploy

To use this, you need to mount both the docker socket and a data directory containing your compose file. You can mount the data anywhere in your docker compose file because its just creating containers on the host machine. But anyways to run it, you just do 
```
(sudo) docker run -d -v $PWD/:/data -v /var/run/docker.sock:/var/run/docker.sock --name (whatever) FloridaMan7588/docker-compose-helper
```
Of course replacing $PWD with whatever your data directory is, and the name with whatever.

## Why?
Good question :finger_guns: lol. But really I could see some use for this if you need to aggregate your logs in one place in a really inconvenient way. tho if you wanted that you could just do docker-compose logs or wtv. I don't really know why honestly
also i made this at like 01:00 so its probably just my tired brain

## Build instructions
Its nothing special, you can just do the regular
```
docker build .
```
because this has literally no dependencies or files needed. yeah thats it