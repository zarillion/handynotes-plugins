FROM python:3.12-slim

RUN apt update && \
    apt install -y \
        build-essential cmake \
        curl git tig vim \
        lua5.1 luarocks && \
    apt clean

RUN luarocks install luacheck
RUN luarocks install --server=https://luarocks.org/dev luaformatter

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
