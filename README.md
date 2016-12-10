# LoraWebApplication
A modern web platform intended for INSA students and teachers to manage their connected devices on the campus area.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Docker](https://docs.docker.com/engine/installation/) and [Docker-Compose](https://docs.docker.com/compose/install/)

## Installation

* `git clone https://github.com/petersg83/LoraWebApplication`
* Move into the new directory
* `make install_web`

## Running / Development

* `make docker_run` will run the app.
* Visit the website at [localhost:3000](localhost:3000)
* `make logs` will show you the logs.

### Refresh containers

* `make refresh_front`
