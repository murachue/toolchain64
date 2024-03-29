FROM ubuntu:22.04

ARG JOBS

RUN apt-get update && apt-get install -y build-essential texinfo bison flex libmpfr-dev libmpc-dev zlib1g-dev libncurses-dev wget git && apt-get clean
COPY build /
RUN /build

FROM ubuntu:22.04
RUN apt-get update && apt-get install -y libmpfr6 libmpc3 make git && apt-get clean
COPY --from=0 /usr/local/ /usr/local/
