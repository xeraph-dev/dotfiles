## docker-compose

If docker not found host.docker.internal, put this in the service in docker-compose.yml

```yml
extra_hosts:
  host.docker.internal: host-gateway
```

