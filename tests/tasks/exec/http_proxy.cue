package main

import (
	"dagger.io/dagger"
	"dagger.io/dagger/core"
)

dagger.#Plan & {
	actions: {
		image: core.#Pull & {
			source: "alpine:3.15.0@sha256:e7d88de73db3d3fd9b2d63aa7f447a10fd0220b7cbf39803c803f2af9ba256b3"
		}

		curlProxy: core.#Exec & {
			input: image.output
			args: [
				"sh", "-c",
				"""
					apk add --no-cache curl
					curl -sfL -o /dev/null https://www.google.com/
					""",
			]
		}
	}
}
