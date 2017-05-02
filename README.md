# docker-rpi-smbd - Docker image for a Samba server on a raspberrypi
![Travis build status](https://api.travis-ci.org/mahnkong/docker-rpi-smbd.svg?branch=master)

## Usage

A typical invocation could look like:
```
docker run --rm -ti -p 139:139 -p 445:445 -e SMB_USERNAME=someuser -e SMB_PASSWORD=somepass -v /hoststorage:/storage -v /path/to/smb.conf:/etc/samba/smb.conf mahnkong/docker-rpi-smbd
```

## Environment Variables

The following environment variables must be set to configure the instance:

```
SMB_USERNAME: SMB User
SMB_PASSWORD: SMB Password
```
