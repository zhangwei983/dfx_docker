# Set the base image.
FROM --platform=linux/amd64 ubuntu:20.04
SHELL ["bash", "-c"]

# Install curl and ca-certificates.
RUN apt -yq update && \
    apt -yqq install --no-install-recommends curl ca-certificates

# Install dfx.
ENV PATH="/root/.local/share/dfx/bin:${PATH}"
RUN DFXVM_INIT_YES=true \
    sh -c "$(curl -fsSL https://internetcomputer.org/install.sh)" && \
    dfx --version
