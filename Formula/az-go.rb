class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.32.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.32.0/az-go-v0.32.0-darwin-arm64.tar.gz"
      sha256 "a343e99960a294ecce42b0247139c6301b8d9cb8b4d55c3c484629764eb564ad"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.32.0/az-go-v0.32.0-darwin-amd64.tar.gz"
      sha256 "eb798ebd7eb809a024787d432a02fd704f0d0d6b782c594585a6d14bf000bcec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.32.0/az-go-v0.32.0-linux-arm64.tar.gz"
      sha256 "4f6fffc1c4dc16f10c742d190626c602988b120c6f70a69078961a0f90ad68a9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.32.0/az-go-v0.32.0-linux-amd64.tar.gz"
      sha256 "867b918876a44875daf3012aef5ccaf32020031265e92f09e42504af64c57288"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
