class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.16.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.16.0/az-go-v0.16.0-darwin-arm64.tar.gz"
      sha256 "3cd7a00f46d4eaf38bbdb448ff7fd11860284d9115be3c0fb2a168721be42a5e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.16.0/az-go-v0.16.0-darwin-amd64.tar.gz"
      sha256 "cae7e0e457e7d012255642d6618a3720e7f9d25662a703c0400f1a1329223ff3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.16.0/az-go-v0.16.0-linux-arm64.tar.gz"
      sha256 "dc7583bf5849220fc9a7dd7752afbf50d907ab31c4ac11647bede3c3da8b83e9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.16.0/az-go-v0.16.0-linux-amd64.tar.gz"
      sha256 "639321d5f9c4785ad2aabd6ece641cbae05a486f2231e793315923fa6362ecd0"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
