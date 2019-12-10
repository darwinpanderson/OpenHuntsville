Open HSV is Huntsville's professional network. The site is built with the [Pakyow](https://www.pakyow.org) web framework. It also utilizes PostgreSQL, Redis, Amazon Web Services, and Mailgun.

# Getting Started

- [Pakyow Warmup](https://www.pakyow.org/docs/warmup)
- [Databases and Pakyow](https://www.pakyow.org/docs/data)
- [Sequel (ORM)](http://sequel.jeremyevans.net/)

# Next Steps

The following resources might be handy:

- [Pakyow Docs](http://pakyow.com/docs)
- [Pakyow Code](http://github.com/pakyow/pakyow)
- [Tech256 Slack (team chat)](http://www.tech256.com)

# Docker

The Docker configuration utilizes a single docker-compose file and two docker files, one for `Ruby / Pakyow` and one for `PostgreSQL`. Also, in order to save on disk/image size and RAM usage, all containers use an Alpine Linux image.

**Building the docker containers:** `docker-compose build`
**Starting the docker containers:** `docker-compose up`

####Container Version Information

|  Application  |  Minimum Version  |  Docker Version  |
|:-------------:|:-----------------:|:----------------:|
| Ruby          | 2.9.0             | 2.9.8            |
| PostgreSQL    | 9.6.16            | 9.6.16           |

####Additional Docker Software Information
|   Application   | Docker Container  |
|:---------------:|:-----------------:|
| gcc             | Ruby              |
| gmp-dev         | Ruby              |
| make            | Ruby              |
| libc-dev        | Ruby              |
| g++             | Ruby              |
| postgresql-dev  | Ruby              |

# License

This repository (hntsvll) is released free and open-source under the [MIT License](LICENSE).