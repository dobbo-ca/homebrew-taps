class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.35.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.35.0/az-go-v0.35.0-darwin-arm64.tar.gz"
      sha256 "78b3d0d0164558bfa8b5f4e8a8f2ce38fc87af257791e89fc0318aab5283a48e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.35.0/az-go-v0.35.0-darwin-amd64.tar.gz"
      sha256 "3e5c9c76ea4a1f9acc7bfd75a32f476e58674967edafaa5b76fb7073f707926b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.35.0/az-go-v0.35.0-linux-arm64.tar.gz"
      sha256 "61b1639fd22a01acee1e1f954939f3348860a07ca4db3a987f0b64b9978752da"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.35.0/az-go-v0.35.0-linux-amd64.tar.gz"
      sha256 "fa2d3810b3dda7ecf6066554537e9e141598cec86b05a2cc8863c83d7d14f85e"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
