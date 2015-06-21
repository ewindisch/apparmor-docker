FROM ubuntu:latest
MAINTAINER Eric Windisch <ewindisch@docker.com>

# URL for more info: https://github.com/ewindisch/apparmor-docker
# Usage: docker run -v /sys/kernel/security:/sys/kernel/security --privileged --rm -it ewindisch/apparmor

RUN apt-get install -qy apparmor
ADD https://raw.githubusercontent.com/ewindisch/docker/apparmor-policy/contrib/apparmor/docker /etc/apparmor.d/docker
ENTRYPOINT /sbin/apparmor_parser -r -W -T /etc/apparmor.d/docker
