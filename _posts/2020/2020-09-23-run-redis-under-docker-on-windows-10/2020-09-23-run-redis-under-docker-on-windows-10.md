---
title: "Run Redis under docker on Windows 10"
date: "2020-09-23T09:32:06+13:00"
tags: [docker,redis]
description: "Install, Run and Interact with Redis under docker on Windows 10"
---

1. Install Docker for Desktop [https://hub.docker.com/editions/community/docker-ce-desktop-windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
2. Run docker command to download redis and run a container

```
docker run --name redis -d redis -p 6379:6379
```
3. Verify that redis container is working. Start an interactive session with above running redis container

```
docker exec -it redis sh
```
you get the # prompt and now run redis-cli at the prompt as below

```
redis-cli
```

This hooks you to the default redis port 6379 on your localhost as below

```
127.0.0.1:6379>
```

Now you’re ready to run the redis commands on redis-cli. Type 'ping' to test

```
ping
```
---

Complete redis-cli command reference is available at https://redis.io/commands

>This post, "Run Redis under docker on Windows 10", first appeared on [https://www.akpratap.com/run-redis-under-docker-on-windows-10](https://www.akpratap.com/run-redis-under-docker-on-windows-10)

