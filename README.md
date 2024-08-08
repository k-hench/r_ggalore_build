# README for `r_ggalore`

Github repository for the [podman](https://podman.io/) container [`r_ggalore`](https://hub.docker.com/repository/docker/khench/r_ggalore).

## Documentation of the initial setup

Originally, the `r_ggalore` container was build using [buildah](https://buildah.io/), from the accompanying `Containerfile`:

```sh
buildah bud -t r_ggalore
```

To make the container publicly available, it is pushed to [dockerhub](https://hub.docker.com/r/khench/r_ggalore) using [skopeo](https://github.com/containers/skopeo) and [podman](https://podman.io/):

```sh
skopeo login -u khench docker.io
podman push localhost/r_ggalore docker.io/khench/r_ggalore:v0.1
```

## Accessing the container

The bundled software can be accessed directly from [dockerhub](https://hub.docker.com/r/khench/r_ggalore) with `podman` (or `docker`, or `singularity` / `apptainer`):

```sh
podman run docker.io/khench/r_ggalore:v0.1 R --version
```
