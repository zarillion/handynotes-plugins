FROM python:3.12-slim

RUN apt update && \
    apt install -y \
        build-essential cmake \
        curl git tig vim wget \
        lua5.1 luarocks && \
    apt clean

RUN wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null && \
    chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    apt update && \
    apt install gh -y

RUN luarocks install luacheck
RUN luarocks install --server=https://luarocks.org/dev luaformatter

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
