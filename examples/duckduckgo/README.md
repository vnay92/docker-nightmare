# Nightmare DuckDuckGo in Docker example

Run this example to test this image out.

## Usage:

```shell
docker build -t duckduckgo .
```

```shell
docker run duckduckgo:latest index.js
```

Expected result:

```
Mon, 16 Jan 2017 06:45:01 GMT nightmare queuing process start
Mon, 16 Jan 2017 06:45:01 GMT nightmare queueing action "goto" for https://duckduckgo.com
Mon, 16 Jan 2017 06:45:01 GMT nightmare queueing action "type"
Mon, 16 Jan 2017 06:45:01 GMT nightmare queueing action "click"
Mon, 16 Jan 2017 06:45:01 GMT nightmare queueing action "wait"
Mon, 16 Jan 2017 06:45:01 GMT nightmare queueing action "evaluate"
Mon, 16 Jan 2017 06:45:01 GMT nightmare running
Mon, 16 Jan 2017 06:45:11 GMT nightmare electron child process exited with code 0: success!
https://github.com/segmentio/nightmare
```
