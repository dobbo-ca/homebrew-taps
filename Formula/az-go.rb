class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.9.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.9.0/az-go-v0.9.0-darwin-arm64.tar.gz"
      sha256 "616dd5ac545074ce0a0982c34d19d278d6ada4fd5b76db243b96a471406df0d0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.9.0/az-go-v0.9.0-darwin-amd64.tar.gz"
      sha256 "8ecb656ae6f5a55a9d398db2cbb7c1fbcee34499eba39508ec79859e8e3d01c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.9.0/az-go-v0.9.0-linux-arm64.tar.gz"
      sha256 "50625eeece5ea729dd247269578780f00e4953025d05758f4ca506f7fb07f66a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.9.0/az-go-v0.9.0-linux-amd64.tar.gz"
      sha256 "7ac28f551059cd4f652ad88678ce2d50c88313701bf62db4d0693af794b9dfd8"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
