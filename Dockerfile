FROM ubuntu:18.04

ARG JOBS

RUN apt update && apt install -y build-essential && apt clean
COPY build /
RUN /build

FROM ubuntu:18.04
COPY --from=0 /usr/local/ /usr/local/
