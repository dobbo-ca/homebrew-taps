class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.30.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.1/az-go-v0.30.1-darwin-arm64.tar.gz"
      sha256 "34ad38fb6b12e3801fe0fff84f2272868a82d15df9e9365891eb848e7c290f9d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.1/az-go-v0.30.1-darwin-amd64.tar.gz"
      sha256 "c466d46f2fa8f89dcfc920a5a186091cf0bb53412ebe2cce2028446bd2cb33a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.1/az-go-v0.30.1-linux-arm64.tar.gz"
      sha256 "b9d36e68db790c05152009cbce438e6f82e213ae58bcbcf67c8f9281b32938ca"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.1/az-go-v0.30.1-linux-amd64.tar.gz"
      sha256 "3056ddc2b85e9c3ffed651fc1d7fea197a5a09ad82820bfd160a8747b5e7e5e5"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
