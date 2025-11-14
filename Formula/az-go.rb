class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.12.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.12.0/az-go-v0.12.0-darwin-arm64.tar.gz"
      sha256 "88ec1afea350b0f056320e810a1724c3c7670b3f227423dde575a2edaea2de00"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.12.0/az-go-v0.12.0-darwin-amd64.tar.gz"
      sha256 "58b8351b8dbda727dfbbbbfc4c8c789cf2d82f2473b93a8c5d3b230bcec617f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.12.0/az-go-v0.12.0-linux-arm64.tar.gz"
      sha256 "119b49818281f6ff5502e4cdd500e9807bccc65264c33d1001c23855afcec863"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.12.0/az-go-v0.12.0-linux-amd64.tar.gz"
      sha256 "1c66238dbb115630b46092e342a0b3595f5419b8c60fdbdc46ceca66bbeb55e4"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
