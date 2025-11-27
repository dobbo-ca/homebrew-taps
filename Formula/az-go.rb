class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.30.3"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.3/az-go-v0.30.3-darwin-arm64.tar.gz"
      sha256 "71fc5e1f0e6738386aa9e44391acfef90158e6776ce4fcd13c046491af44099d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.3/az-go-v0.30.3-darwin-amd64.tar.gz"
      sha256 "d36a2646fccab928152ff11c6875ffea7db2d0d9f79ed5d966264a7d23c20728"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.3/az-go-v0.30.3-linux-arm64.tar.gz"
      sha256 "6f9dd029cb7c3afeb3c41d2eb15a964432efefc0518803d93d4967c74de3aa92"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.3/az-go-v0.30.3-linux-amd64.tar.gz"
      sha256 "4a58bcc4e9273ff0c9d831cc7d7d97f784c9ea391c9805a2c62f6a2abc607501"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
