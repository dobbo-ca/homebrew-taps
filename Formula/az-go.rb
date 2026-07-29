class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.6.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.6.0/az-go-v1.6.0-darwin-arm64.tar.gz"
      sha256 "c4bf0c80cefe93e9309ab82d04b4977139e73374e6bb95b7f1073c55dec96c84"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.6.0/az-go-v1.6.0-darwin-amd64.tar.gz"
      sha256 "e08bc51bc47dbac2639565050fbbf9ea141f5866e0537470a00c217300d4770e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.6.0/az-go-v1.6.0-linux-arm64.tar.gz"
      sha256 "8ee14e28c9e4891a8bd6868077e1b7b370539038b6efc257c58bedfb3677bbb3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.6.0/az-go-v1.6.0-linux-amd64.tar.gz"
      sha256 "8fcadb774a1e68df72659c785eb52b32717a6d449a4abfdc781bd6b41c0a817d"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
