class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.27.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.27.0/az-go-v0.27.0-darwin-arm64.tar.gz"
      sha256 "8a90b49b9429a9d7c964077f68af18e46bef6a76a0e1fe99f7542fb2a21c6c1e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.27.0/az-go-v0.27.0-darwin-amd64.tar.gz"
      sha256 "dc7cc2f19e3d9fe8f24423f3c0039520cf6ae009b766b874dcec1dea7c67beae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.27.0/az-go-v0.27.0-linux-arm64.tar.gz"
      sha256 "9b98051c86fc3f2cda2166080b1ce6610ec9f15ea55cbab5ee2588198e167a88"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.27.0/az-go-v0.27.0-linux-amd64.tar.gz"
      sha256 "e6a6f3ec975ec4bb995a2ba9fab0a8bb0af74043b60b54fc40e27a9a6355868c"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
