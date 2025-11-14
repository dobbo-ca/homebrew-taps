class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.11.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.11.0/az-go-v0.11.0-darwin-arm64.tar.gz"
      sha256 "96881da719c5596e91457195d4ced319aeb7ba00cb1ff4f54a5e6239644601be"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.11.0/az-go-v0.11.0-darwin-amd64.tar.gz"
      sha256 "a246906829c899560efe1cb517c2e74f6f8cdf405a9f33b0fa4ae2ecc91d49b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.11.0/az-go-v0.11.0-linux-arm64.tar.gz"
      sha256 "b645060999f21924b1c0d49dcbc77860687999f2236249bfbd47ecdba593cd21"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.11.0/az-go-v0.11.0-linux-amd64.tar.gz"
      sha256 "ea0053e0f31fa4e00d67a9cd2a911f493d00f4da3a7309b44f66c88a8715d354"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
