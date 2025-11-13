class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.4.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.4.0/az-go-v0.4.0-darwin-arm64.tar.gz"
      sha256 "25c4c339b6dc7e973eaafba90c518c8600286caef23dd393607acb76bff03135"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.4.0/az-go-v0.4.0-darwin-amd64.tar.gz"
      sha256 "d785197c8e752a82f18042802425ce7bf91c0e16deaeec2e75604ed1030f79bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.4.0/az-go-v0.4.0-linux-arm64.tar.gz"
      sha256 "b2d1a83fc4af36f4f522160a14db6e7f9c1bc4e613943c8d9d0477dc9cff3b11"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.4.0/az-go-v0.4.0-linux-amd64.tar.gz"
      sha256 "4ec3b70822381af9d05bb6554440864a8424e6cd5c98a72d9cf56d8eb5650f4d"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
