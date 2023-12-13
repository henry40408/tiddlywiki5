# TiddlyWiki 5 Docker Image

![TiddlyWiki Version](https://img.shields.io/badge/TiddlyWiki-v5.3.2-blue)
![Latest Release](https://img.shields.io/github/v/release/henry40408/tiddlywiki5?label=Latest%20Release)
[![Latest Build](https://img.shields.io/github/actions/workflow/status/henry40408/tiddlywiki5/workflow.yml?branch=main&label=build&logo=docker&logoColor=white)](https://github.com/henry40408/tiddlywiki5/actions/workflows/workflow.yml)
![Docker Image Supported Architectures](https://img.shields.io/badge/arch-amd64%20%7C%20arm64-blue?logo=docker&logoColor=white)
[![License](https://img.shields.io/github/license/henry40408/tiddlywiki5)](https://github.com/henry40408/tiddlywiki5/blob/main/LICENSE)
![Node.js Version](https://img.shields.io/badge/node-v20.7.0-green?logo=node.js&logoColor=white)

This is an unofficial Docker image for running [TiddlyWiki 5](https://tiddlywiki.com/), a non-linear personal web notebook. The image is built on top of the Node.js runtime and includes the TiddlyWiki server as a dependency.

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

## Environment Variables

The following environment variables are supported in the Dockerfile:

| Variable        | Description                                              | Default Value |
| --------------- | -------------------------------------------------------- | ------------- |
| `USERNAME`      | The username to use for TiddlyWiki login.                | null          |
| `PASSWORD`      | The password to use for TiddlyWiki login.                | null          |
| `ANON_USERNAME` | The username to use for anonymous access to TiddlyWiki.  | null          |
| `EXTRA_PARAMS`  | Additional parameters to pass to the tiddlywiki command. | null          |

## Docker tags

Please note that the Docker image tagged with `latest` is a stable release of TiddlyWiki5, which is updated when a new release is created on GitHub. However, Docker images tagged with `nightly` are built from the latest development code and may not be stable. Use them at your own risk.

## Special Thanks

I would like to extend my heartfelt gratitude to [Jeremy Ruston](https://github.com/Jermolene), the maintainer of TiddlyWiki. I use TiddlyWiki every day and find it remarkably stable and invaluable in enhancing my productivity. Jeremy’s dedication to maintaining this remarkable piece of software is truly commendable, and I am truly grateful for his ongoing efforts and commitment.

This Docker image I am maintaining is unofficial and has been adapted to run on my Raspberry Pi 4 (arm64). It’s my hope that I can continue to maintain this Docker image with the same level of dedication and longevity as Jeremy has maintained TiddlyWiki.

Lastly, I encourage everyone who loves and benefits from the original TiddlyWiki project to consider supporting it financially. If you find value in what Jeremy and the TiddlyWiki community are creating and wish to see it thrive and evolve, please consider donating via the project's [Open Collective](https://opencollective.com/tiddlywiki).

Thank you to everyone involved in the TiddlyWiki project and the broader community for making such impactful contributions to open-source software.

## License

This Docker image is distributed under the MIT License. See the `LICENSE` file for more details.
