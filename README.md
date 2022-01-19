## Description

Basic Docker image for running [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html).

## Build

Clone this repository and run:

```
docker buildx build -t dnsmasq .
```

## Usage

After building the image, simply run:

```
docker run -d --name dnsmasq -p 53:53/udp dnsmasq
```

## Load custom configurations

It is possible to either replace the default `/etc/dnsmasq.conf` file or add multiple configuration files under the `/etc/dnsmasq.d` directory. For example:

```
docker run -d --name dnsmasq -p 53:53/udp -v /path/to/conf/files:/etc/dnsmasq.d dnsmasq
```

## Enable query logging

By default this image does not log DNS queries. This can be changed by appending `-q` to the `dnsmasq` command located inside the `entrypoint.sh` file.
