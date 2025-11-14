class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.8.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.8.0/az-go-v0.8.0-darwin-arm64.tar.gz"
      sha256 "fd882c280ba828cf7adf09081aa735bf19bedd728ee08b5c7631813c217c7581"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.8.0/az-go-v0.8.0-darwin-amd64.tar.gz"
      sha256 "629a597454499ce72d66a1f87a62afabe3b974ca5044c16d9f96a94c64b4963b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.8.0/az-go-v0.8.0-linux-arm64.tar.gz"
      sha256 "74ae4ac6268b07fcf9de41404f34f219854c9bb93869771d1c3e867a147c8717"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.8.0/az-go-v0.8.0-linux-amd64.tar.gz"
      sha256 "8315a80d7a044c970e7661d3214b9b4bf03566c69becdea5a54972d315e82df6"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
