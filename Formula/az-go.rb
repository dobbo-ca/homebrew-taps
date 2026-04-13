class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.36.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.1/az-go-v0.36.1-darwin-arm64.tar.gz"
      sha256 "a30aba1be4605d3948130ca35d0f8d8ac478cf872b1eace16b8f6c47e319f049"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.1/az-go-v0.36.1-darwin-amd64.tar.gz"
      sha256 "087c6ee362b88d70191f32053001e5d38bc2a6709a4779a56fd43a949ad8386a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.1/az-go-v0.36.1-linux-arm64.tar.gz"
      sha256 "6a85525471460dd652faf96a6fb0311c4478887967a1f1c4f17f43ca71f2d80d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.1/az-go-v0.36.1-linux-amd64.tar.gz"
      sha256 "e2a3b28847fff449e8c8ea80d2d8cca0e5477759a6f607efc3600dfb8b0ca801"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
