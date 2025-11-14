class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.20.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.20.0/az-go-v0.20.0-darwin-arm64.tar.gz"
      sha256 "e2f242ac719807024ebd384d4e825cd60b338dcbe042e6480284db351d1c8315"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.20.0/az-go-v0.20.0-darwin-amd64.tar.gz"
      sha256 "ce5dde00d53c34c6381901d2947de755d81fe8f71b75ae4a2542ea37fbdf408b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.20.0/az-go-v0.20.0-linux-arm64.tar.gz"
      sha256 "ea6b00372d1c21a6cc5ec1b7d07f675d7e91d0c4314e0feafc7f706120588faf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.20.0/az-go-v0.20.0-linux-amd64.tar.gz"
      sha256 "9c7a9fd3ae8c8a10beb0d83269555b909257ec4b4bff98dc8c4a13978d070213"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
