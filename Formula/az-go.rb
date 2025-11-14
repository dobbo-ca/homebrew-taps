class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.14.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.14.0/az-go-v0.14.0-darwin-arm64.tar.gz"
      sha256 "1d4a51eec8753d90cc1fad03c45dd52a0f32d59fff5453c3c123d1bf40bf5fb0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.14.0/az-go-v0.14.0-darwin-amd64.tar.gz"
      sha256 "7d27bf53389c1d8cb71593ffb051b67055ba4023522b52be81dc581c4fe95ee8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.14.0/az-go-v0.14.0-linux-arm64.tar.gz"
      sha256 "f76bb7e11e1e359baa7e27c44fb82714feef9ff062731c484853399a9d7cc53a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.14.0/az-go-v0.14.0-linux-amd64.tar.gz"
      sha256 "12f9621ab4d6f69af874c678dd4a275e823fcc3c51f5a9b13ba423fd3a6f33ad"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
