package main

import (
	"dagger.io/dagger"
	"dagger.io/dagger/core"
)

dagger.#Plan & {
	client: network: {
		"unix:///var/run/docker.sock": connect: dagger.#Socket
		docker: {
			connect: dagger.#Socket
			address: "unix:///var/run/docker.sock"
		}
	}

	actions: {
		image: core.#Pull & {
			source: "alpine:3.15.0@sha256:e7d88de73db3d3fd9b2d63aa7f447a10fd0220b7cbf39803c803f2af9ba256b3"
		}

		imageWithDocker: core.#Exec & {
			input: image.output
			args: ["apk", "add", "--no-cache", "docker-cli"]
		}

		test: {
			default: core.#Exec & {
				input: imageWithDocker.output
				mounts: docker: {
					dest:     "/var/run/docker.sock"
					contents: client.network."unix:///var/run/docker.sock".connect
				}
				args: ["docker", "info"]
			}
			custom: core.#Exec & {
				input: imageWithDocker.output
				mounts: docker: {
					dest:     "/var/run/docker.sock"
					contents: client.network.docker.connect
				}
				args: ["docker", "info"]
			}
		}
	}
}
