# CORDRA 1.0.7 on Oracle Enterprise Linux 6.7/OpenJDK 1.8
Unconfigured instance of CORDRA (http://cordra.org) installed
to `/opt/cordra`

## Adding your configuration
- map a volume to `/opt/cordra/config` where your mapped folder
  contains the following files:
  - config.dct
  - password.dct
  - privatekey
  - publickey

## Sample
Using the following run command with a suitable set of configuration files
as noted above should let you launch the CORDRA UI on port 8080.

```
  docker run -d -p 8080:8080 -v $PWD/config:/opt/cordra/config:ro ryanv/cordra
```