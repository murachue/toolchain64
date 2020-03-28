FROM ubuntu:18.04

ARG JOBS

RUN apt-get update && apt-get install -y build-essential texinfo bison flex libmpfr-dev libmpc-dev zlib1g-dev wget git && apt-get clean
COPY build /
RUN /build

FROM ubuntu:18.04
RUN apt-get update && apt-get install -y libmpfr6 libmpc3 git && apt-get clean
COPY --from=0 /usr/local/ /usr/local/
