class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.23.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.23.0/az-go-v0.23.0-darwin-arm64.tar.gz"
      sha256 "5ee01a708e2554f6e2c8da44e767bc537d15b57fbeda0c522a2b566579c12592"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.23.0/az-go-v0.23.0-darwin-amd64.tar.gz"
      sha256 "30a97cd89353c894f5f4cb6ff9827f207bac9724a87e8d9f5d210149715a32b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.23.0/az-go-v0.23.0-linux-arm64.tar.gz"
      sha256 "f43f1d6129ed7893b9c58a025824f2c0bb428694d46e1e36df2b99e62a448e9e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.23.0/az-go-v0.23.0-linux-amd64.tar.gz"
      sha256 "1c0fb6d334a0330da62040d90293f94bddee15e430d06d7aea33b880d5d1e394"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
