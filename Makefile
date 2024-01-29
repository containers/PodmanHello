PODMAN = podman
IMAGE = myhello

CFLAGS = -O2
LDFLAGS = -static

.PHONY: build run

build:
	$(PODMAN) build -t $(IMAGE) .

run:
	$(PODMAN) run $(IMAGE)

podman_hello_world: podman_hello_world.c
