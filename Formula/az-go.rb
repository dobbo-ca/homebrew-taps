class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.4.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.4.0/az-go-v1.4.0-darwin-arm64.tar.gz"
      sha256 "92b198d39713ef601cedf6d106611b04b10619216d6ca7dcfa015d39636962c9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.4.0/az-go-v1.4.0-darwin-amd64.tar.gz"
      sha256 "de3f933b3fb93ad1b77f84dca83e4e2b5f51eb63f984cf665a502f9b56fb8029"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.4.0/az-go-v1.4.0-linux-arm64.tar.gz"
      sha256 "97633bfb0e47350892c36241b0a7b10d737f2ec0fb239047839128302cdde193"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.4.0/az-go-v1.4.0-linux-amd64.tar.gz"
      sha256 "cf07335e6980fe14f743a8c370478663bd869d1a8b764477679ac83b13e6f6e1"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
