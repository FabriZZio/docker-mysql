docker-mysql
============

Docker MySQL base image definition


Usage
=====

Running the container:

```
    docker run  -d
                -v /path/to/mysql/var:/var
                -v /path/to/mysql/etc:/etc/mysql
                -p 3306
                -name mysql
                fabrizzio/docker-mysql
```
