# Development container

## Setup

Build the docker image.
```bash
docker build -t zyndiecate/dev-container github.com/zyndiecate/dev-container
```

Go into the container and put your public key into /.ssh/authorized_keys and exit.
```bash
docker run -i -t zyndiecate/dev-container /bin/bash
```

Commit the container changes to the docker image.
```bash
docker commit <container id> zyndiecate/dev-container
```

Tag a project container.
```bash
docker tag <image id> zyndiecate/dev-container-project1
```

Run the dev container as ssh service.
```bash
docker run -d -p 22 zyndiecate/dev-container-project1 /usr/sbin/sshd -D
```

Connect to the container and hack.
```bash
ssh root@localhost -p <container port> -A
```
