![PODMAN logo](https://raw.githubusercontent.com/containers/common/main/logos/podman-logo-full-vert.png)

# Podman Hello World image Repository

## Overview

This directory contains the Containerfile and source code necessary to create the
"hello" podman image housed on quay.io under the Podman account in a public
repository.  The image is public and can be pulled without credentials.

Using this image is helpful to:

 * Prove that basic Podman operations are working on the host.
 * Shows that the image was pulled from the quay.io container registry.
 * Container creation was successfully accomplished. (`podman ps -a`)
 * The created container was able to stream output to your terminal.

## Directory Contents

The contents of this directory contain:
 * ./Containerfile
 * ./podman_hello_world.c

## Sample Usage

To simply run the image:

```
podman run quay.io/podman/hello

!... Hello Podman World ...!

         .--"--.
       / -     - \
      / (O)   (O) \
   ~~~| -=(,Y,)=- |
    .---. /`  \   |~~
 ~/  o  o \~~~~.----. ~~
  | =(X)= |~  / (O (O) \
   ~~~~~~~  ~| =(Y_)=-  |
  ~~~~    ~~~|   U      |~~

Project:   https://github.com/containers/podman
Website:   https://podman.io
Desktop:   https://podman-desktop.io
Documents: https://docs.podman.io
YouTube:   https://youtube.com/@Podman
X/Twitter: @Podman_io
Mastodon:  @Podman_io@fosstodon.org
```
To build the image yourself, copy the files from this directory into
a local directory and issue these commands:

```
podman build -t myhello .
podman run myhello
```

## Alternatives

Alternative hello images are in the "shell" and "python" directories.

They don't need a builder image, at the expense of a larger runtime.

## THANKS!

Many Thanks to [Anders Björklund](https://github.com/afbjorklund) for a great discussion during the
first revision of this container image that resulted in moving
from using bash to using C, and the ensuing changes to the
Containerfile.

Also many thanks to [Máirín Duffy](https://github.com/mairin) for the awesome ASCII art!

