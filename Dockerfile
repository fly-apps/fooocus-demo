FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install --no-install-recommends -y python3 python3-pip git libgl1 libglib2.0-0 && \
    rm -rf /var/lib/apt/lists/*

RUN --mount=type=cache,target=/root/.cache/pip pip3 install virtualenv

WORKDIR /bootstrap

COPY ./bootstrap.sh /bootstrap/bootstrap.sh
RUN chmod +x "/bootstrap/bootstrap.sh"

ENTRYPOINT [ "/bootstrap/bootstrap.sh", "--listen" ]
