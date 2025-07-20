#!/bin/bash
set -euo pipefail

version=4.7.0
arch=arm64
os=darwin
binary="kubebuilder_${os}_${arch}"
url="https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${version}/kubebuilder_${os}_${arch}"

echo "Downloading Kubebuilder binary from ${url}..."
curl -L -o kubebuilder "${url}"

echo "Making binary executable..."
chmod +x kubebuilder

echo "Moving binary to /usr/local/bin..."
sudo mv kubebuilder /usr/local/bin/kubebuilder

echo "Verifying installation..."
kubebuilder version