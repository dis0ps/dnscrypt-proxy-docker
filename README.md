# unofficial dnscrypt-proxy docker image

[![Build Status](https://travis-ci.com/klutchell/dnscrypt-proxy.svg?branch=master)](https://travis-ci.com/klutchell/dnscrypt-proxy)
[![Docker Pulls](https://img.shields.io/docker/pulls/klutchell/dnscrypt-proxy.svg?style=flat)](https://hub.docker.com/r/klutchell/dnscrypt-proxy/)

[dnscrypt-proxy](https://github.com/jedisct1/dnscrypt-proxy) is a flexible DNS proxy, with support for encrypted DNS protocols.

## Tags

|tag|dnscrypt-proxy|arch|
|---|---|---|
|`latest`, `2.0.25`|[`2.0.25`](https://github.com/jedisct1/dnscrypt-proxy/releases/tag/2.0.25)|`amd64`, `arm32v6`, `arm64v8`|
|`2.0.25-amd64`|[`2.0.25`](https://github.com/jedisct1/dnscrypt-proxy/releases/tag/2.0.25)|`amd64`|
|`2.0.25-arm`|[`2.0.25`](https://github.com/jedisct1/dnscrypt-proxy/releases/tag/2.0.25)|`arm32v6`|
|`2.0.25-arm64`|[`2.0.25`](https://github.com/jedisct1/dnscrypt-proxy/releases/tag/2.0.25)|`arm64v8`|

## Deployment

```bash
docker run -p 53:53/tcp -p 53:53/udp klutchell/dnscrypt-proxy
```

## Parameters

* `-p 53:53/tcp` - expose tcp port 53 on the container to tcp port 53 on the host
* `-p 53:53/udp` - expose udp port 53 on the container to udp port 53 on the host
* `-v /path/to/config:/config` - (optional) mount a custom configuration directory

## Building

```bash
make build
```

## Testing

```bash
make test
```

## Usage

Official project wiki:
https://github.com/jedisct1/dnscrypt-proxy/wiki

## Author

Kyle Harding: https://github.com/klutchell

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.

## Acknowledgments

* https://github.com/jedisct1/dnscrypt-proxy

## License

* klutchell/dnscrypt-proxy: [MIT License](./LICENSE)
* jedisct1/dnscrypt-proxy: [ISC License](https://github.com/jedisct1/dnscrypt-proxy/blob/master/LICENSE)
