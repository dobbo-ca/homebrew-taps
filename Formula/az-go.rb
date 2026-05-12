class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.42.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.42.0/az-go-v0.42.0-darwin-arm64.tar.gz"
      sha256 "1e434cd66c6ce9f973a7bb9e23a5f566108a3eeda4b1a203f2c6b263051415b2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.42.0/az-go-v0.42.0-darwin-amd64.tar.gz"
      sha256 "3b85e6053c4c13d9030336d0b70b3307c2fa8e701bf47beac4ce1be03148b673"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.42.0/az-go-v0.42.0-linux-arm64.tar.gz"
      sha256 "89fa3561893557973f4af27336d510508fa4d2a661066fde6d12549d2506be8d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.42.0/az-go-v0.42.0-linux-amd64.tar.gz"
      sha256 "270b5c1fe9c099122231518ad18bfe51ad7dfcf8af0475a2eae92d200e56c833"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
