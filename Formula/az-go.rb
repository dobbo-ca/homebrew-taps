class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.31.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.0/az-go-v0.31.0-darwin-arm64.tar.gz"
      sha256 "d0671cd3d36e983806d9b10f071d0a2d8df0ad8b03f971472c2e136b025f8078"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.0/az-go-v0.31.0-darwin-amd64.tar.gz"
      sha256 "86367ac0d86e41433c4a2f3ff331bd737399c73e41a0388981590533f185dcd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.0/az-go-v0.31.0-linux-arm64.tar.gz"
      sha256 "c1230cb77bee30e8dd309be157a6d059e7f28fddd4a0bef3eb84465a976b5f5b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.0/az-go-v0.31.0-linux-amd64.tar.gz"
      sha256 "db36da91e193ec4be56169ce3355d7d505a36a10a607515d2dcee5fedce131e4"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
