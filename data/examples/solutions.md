## docker-compose

If docker can't find host.docker.internal, put this in the service in docker-compose.yml

```yml
extra_hosts:
  host.docker.internal: host-gateway
```

