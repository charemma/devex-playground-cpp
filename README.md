# Playground C++ Demo Project

This is a simple C++ project that demonstrates how to use CMake to build a C++ project with devcontainer support.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [devcontainer-cli](https://github.com/devcontainers/cli)

### Install Docker

- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Install Visual Studio Code

- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Install devcontainer-cli

```
npm install -g @devcontainers/cli
```

## Getting Started

1. Clone this repository

```bash
git clone github.com/charemma/playground-cpp-demo
```

2. Open the project in Visual Studio Code

```bash
cd playground-cpp-demo
code .
```

3. Start the devcontainer

```bash
devcontainer up --workspace-folder $(pwd)
```

4. Build the project

```bash
devcontainer exec --workspace-folder $(pwd) make
```
