class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.19.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.19.0/az-go-v0.19.0-darwin-arm64.tar.gz"
      sha256 "b8da7691a310468117c899165a366b3965a8f04ab0ff7ab79422bb7d2c3a4c6f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.19.0/az-go-v0.19.0-darwin-amd64.tar.gz"
      sha256 "3938acff5737d56a1809d98357d448d5134a50b58c93edd2777417a8f0672c47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.19.0/az-go-v0.19.0-linux-arm64.tar.gz"
      sha256 "1032ae3054f09a68d1ee530cf7cea607b9f03d04cf0e7957bee6d80d33833ecc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.19.0/az-go-v0.19.0-linux-amd64.tar.gz"
      sha256 "d3fe00de6fa865906f0c9c60324ddd392a085501884a6d8595cb1e5e11386378"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
