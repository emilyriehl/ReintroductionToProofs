# Start from a node image
FROM node:20

# As root, install system dependencies and tools.
# This assumes you might need curl, git, etc.
# The 'node:20' image typically has these, but this is good practice.
USER root

# Set up the lean toolchain file. You can do this at the beginning.
COPY ./lean-toolchain /lean-toolchain

# Install elan and the Lean toolchain as root.
# This ensures that `elan` is available for all users.
# The `chmod` is also crucial to allow the `node` user to use the tools.
ENV ELAN_HOME=/usr/local/elan \
  PATH=/usr/local/elan/bin:$PATH

RUN export LEAN_VERSION="$(cat /lean-toolchain)" && \
  curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain $LEAN_VERSION; \
    chmod -R a+w $ELAN_HOME; \
    elan --version; \
    lean --version; \
    leanc --version; \
    lake --version; \
    # Clean up the cache to reduce image size
    rm -rf /root/.elan/

# Now, switch to the non-root user `node`.
# All subsequent commands should be run as this user to align with your
# devcontainer.json settings (`"remoteUser": "node"`).
USER node

# Set the home directory and the workspace for the `node` user.
WORKDIR /home/node

# Now, clone the lean4game repository into the user's home directory.
RUN export LEAN_VERSION="$(cat /lean-toolchain | grep -oE '[^:]+$')" && \
    git clone --depth 1 --branch $LEAN_VERSION https://github.com/leanprover-community/lean4game.git

# Set the final working directory for the container to the workspace.
# This is optional but good practice to match your docker-compose.yml volume.
WORKDIR /home/node/game
