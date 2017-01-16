# Docker-Nightmare headless node image

A `node:latest` compiled with `nightmare` support running in `xvfb`.

## Usage:

In your project, use this image:

```
FROM quay.io/ivanvanderbyl/docker-nightmare:latest

ADD . /workspace
RUN yarn install # if you have package.json and/or yarn.lock

CMD "index.js"
```

Then build the image:

```shell
docker build -t myscraper .
```

Run your nightmare script (assuming it was called `index.js`):

```shell
docker run myscraper:latest --rm index.js
```

See a working example for [DuckDuckGo](https://github.com/ivanvanderbyl/docker-nightmare/tree/master/examples/duckduckgo)

### Technical details

- Node is latest from docker hub, so probably 7.2+ at time of writing
- Your script is executed with Xvfb running in the background on display `:99.0` at `1280x2000x24`
- `node` is executed with `--harmony-async-await` flag.
- Most of this is based on help from https://github.com/segmentio/nightmare/issues/224
