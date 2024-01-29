PODMAN = podman
IMAGE = hellopy

.PHONY: build run

build:
	$(PODMAN) build -t $(IMAGE) .

run:
	$(PODMAN) run $(IMAGE)
