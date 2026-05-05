class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.39.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.0/az-go-v0.39.0-darwin-arm64.tar.gz"
      sha256 "6eab1816d50ec00348654ab60e4c47f2385fcfd9e9293e920994f30d25ed3bf7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.0/az-go-v0.39.0-darwin-amd64.tar.gz"
      sha256 "5bb038bc9b18f5fea7c5582c622d11d34af104e63aa673368b9fd668e4eb066f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.0/az-go-v0.39.0-linux-arm64.tar.gz"
      sha256 "4eeb1d6332b9e602c39aa5142518f7b5cf962cf91e92e680bf32b63e4cbf54af"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.0/az-go-v0.39.0-linux-amd64.tar.gz"
      sha256 "383d17a0da42cb643b530a79197f0e0ad299a7b3c82bb303e37ba73f3afff46d"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
