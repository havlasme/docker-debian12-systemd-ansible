VERSION ?= latest
NAMESPACE ?= havlasme
IMAGENAME ?= debian12-systemd-ansible

PODMAN = @podman

.PHONY: build
build:
	$(PODMAN) build -t $(NAMESPACE)/$(IMAGENAME):$(VERSION) .
