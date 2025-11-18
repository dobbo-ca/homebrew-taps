class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.30.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.0/az-go-v0.30.0-darwin-arm64.tar.gz"
      sha256 "abc80daeb334c527bedc451df04d17c6d709972c0b12d9286dca0b4ad53d7e52"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.0/az-go-v0.30.0-darwin-amd64.tar.gz"
      sha256 "e3825a92de9849b6e32e4e0ab297779488131baf4d89584c9926b9ba8697939e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.0/az-go-v0.30.0-linux-arm64.tar.gz"
      sha256 "202fa391166e5e5cf5966e669b94357049ad3f56c07c43bd30528e0270841525"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.0/az-go-v0.30.0-linux-amd64.tar.gz"
      sha256 "73ef663676c2583e5d1a6bcced13ece097c3ec2265423936df159edaaf62ab70"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
