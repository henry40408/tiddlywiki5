# TiddlyWiki 5 Docker Image

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

## License

This Docker image is distributed under the MIT License. See the `LICENSE` file for more details.
