FROM debian:latest

# Install tools for c++ development in devcontainer
RUN apt-get update && apt-get install -y \
    build-essential \
    clang \
    clang-format \
    clang-tidy \
    clangd \
    cmake \
    git \
    lldb \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user to use if preferred - see https://aka.ms/vscode-remote/containers/non-root-user.
RUN groupadd --gid 1001 vscode \
    && useradd -s /bin/bash --uid 1001 --gid 1001 -m vscode

USER vscode
