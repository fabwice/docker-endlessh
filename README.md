# Endlessh: an SSH tarpit


Endlessh is an SSH tarpit [that *very* slowly sends an endless, random
SSH banner][np]. It keeps SSH clients locked up for hours or even days
at a time. The purpose is to put your real SSH server on another port
and then let the script kiddies get stuck in this tarpit instead of
bothering a real server.

Since the tarpit is in the banner before any cryptographic exchange
occurs, this program doesn't depend on any cryptographic libraries. It's
a simple, single-threaded, standalone C program. It uses `poll()` to
trap multiple clients at a time.



## Usage

Usage information is printed with `-h`.

```
Usage: endlessh [-vh] [-d MS] [-f CONFIG] [-l LEN] [-m LIMIT] [-p PORT]
  -4        Bind to IPv4 only
  -6        Bind to IPv6 only
  -d INT    Message millisecond delay [10000]
  -f        Set and load config file [/etc/endlessh/config]
  -h        Print this help message and exit
  -l INT    Maximum banner line length (3-255) [32]
  -m INT    Maximum number of clients [4096]
  -p INT    Listening port [2222]
  -v        Print diagnostics to standard output (repeatable)
```

# endlessh-docker
https://github.com/skeeto/endlessh in a docker container

## Docker Hub
https://hub.docker.com/r/fabwice/docker-endlessh
