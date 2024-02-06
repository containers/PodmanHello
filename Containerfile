FROM docker.io/fedora:39 as builder
RUN yum install -y musl-gcc upx
ADD podman_hello_world.c .
RUN musl-gcc -Wl,-z,max-page-size=0x1000 -s -Wl,-z,norelro -Os -fdata-sections -ffunction-sections -static -o podman_hello_world podman_hello_world.c
RUN strip --strip-all --remove-section=.comment podman_hello_world
RUN upx podman_hello_world
FROM scratch
LABEL maintainer="Podman Maintainers"
LABEL artist="Máirín Ní Ḋuḃṫaiġ, X/Twitter:@mairin"
LABEL io.containers.capabilities="sys_chroot"
COPY --from=builder podman_hello_world /usr/local/bin/podman_hello_world
CMD ["/usr/local/bin/podman_hello_world"]
