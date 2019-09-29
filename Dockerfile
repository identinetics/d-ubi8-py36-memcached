FROM registry.access.redhat.com/ubi8/python-36
#FROM localhost/intra/ubi8-py36

USER root

RUN dnf update -y \
 && dnf -y install memcached compat-openssl10.x86_64 \
 && dnf clean all && rm -rf /var/cache/yum
