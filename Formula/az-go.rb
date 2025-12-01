class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.30.4"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.4/az-go-v0.30.4-darwin-arm64.tar.gz"
      sha256 "de0b3597db3f6b875caba7d326fbcfa326796d749e62a40e11f423f4254ec7c6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.4/az-go-v0.30.4-darwin-amd64.tar.gz"
      sha256 "e4b72aaf3315e0b65f2dcd45167828ead3e81d67be154e5bef86398b8229933b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.4/az-go-v0.30.4-linux-arm64.tar.gz"
      sha256 "cff64167070c2864b6de20ae984a15a0b88d0a0b951f18f266ed2756b7add9fa"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.4/az-go-v0.30.4-linux-amd64.tar.gz"
      sha256 "2e5ede4ba48a9c9542d278da5f24671abb33deafc827f5958b2c85d0f170e76b"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
