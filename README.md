# TiddlyWiki 5 Docker Image

![TiddlyWiki Version](https://img.shields.io/badge/TiddlyWiki-v5.2.5-blue)
[![Latest Build](https://img.shields.io/github/actions/workflow/status/henry40408/tiddlywiki5/build.yml?branch=main&label=build&logo=docker&logoColor=white)](https://github.com/henry40408/tiddlywiki5/actions/workflows/build-docker-image.yml)
[![Docker Image Supported Architectures](https://img.shields.io/badge/arch-amd64%20%7C%20arm64-blue?logo=docker&logoColor=white)](https://hub.docker.com/r/myusername/tiddlywiki5)
[![License](https://img.shields.io/github/license/henry40408/tiddlywiki5)](https://github.com/henry40408/tiddlywiki5/blob/main/LICENSE)
![Node.js Version](https://img.shields.io/badge/node-v16.19.1-green?logo=node.js&logoColor=white)

This is a Docker image for running TiddlyWiki 5, a non-linear personal web notebook. The image is built on top of the Node.js runtime and includes the TiddlyWiki server as a dependency.

## Usage

To use this Docker image, run the following command:

```sh
docker run -p 8080:8080 ghcr.io/henry40408/tiddlywiki5:latest

```

This will start a TiddlyWiki server on port 8080, which you can access by navigating to `http://localhost:8080` in your web browser.

You can also mount a volume to persist your TiddlyWiki data, like so:

```sh
docker run -p 8080:8080 -v $PWD/wiki:/var/lib/tiddlywiki ghcr.io/henry40408/tiddlywiki5:latest
```

This will mount the directory `$PWD/wiki` on your local machine to the `/var/lib/tiddlywiki` directory inside the Docker container, allowing you to persist your TiddlyWiki data between container runs.

## Docker tags

Please note that the Docker image tagged with `latest` is a stable release of TiddlyWiki5, which is updated when a new release is created on GitHub. However, Docker images tagged with `nightly` are built from the latest development code and may not be stable. Use them at your own risk.

## License

This Docker image is distributed under the MIT License. See the `LICENSE` file for more details.
