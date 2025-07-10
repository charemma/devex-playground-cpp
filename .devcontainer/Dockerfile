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

# setup user
ENV USERNAME=vscode
ENV USER_UID=1001
ENV USER_GID=1001

# Create a non-root user to use if preferred - see https://aka.ms/vscode-remote/containers/non-root-user.
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME

USER $USERNAME
