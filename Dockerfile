FROM alpine:3.9 AS build

WORKDIR /build

RUN apk add --no-cache \
git \
cmake \
build-base && \
git clone https://github.com/fabwice/endlessh.git && \
cd endlessh && \
make



FROM alpine:3.9

COPY --from=build /build/endlessh/endlessh /endlessh

RUN addgroup -S -g 1001 non-root-group
RUN adduser -S -u 1001 -G non-root-group non-root-user

USER 1001


ENTRYPOINT ["/endlessh", "-v"]

CMD ["-p 22"]

EXPOSE 22/tcp
