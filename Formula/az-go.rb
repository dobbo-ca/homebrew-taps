class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.7.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.7.0/az-go-v1.7.0-darwin-arm64.tar.gz"
      sha256 "f247d3515b034cf68ed5b661fc1309e385bf7231bf97af5b21a2c9293c518b18"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.7.0/az-go-v1.7.0-darwin-amd64.tar.gz"
      sha256 "eee2ec8f1b0ed45c2784d422fe77dcbb1d98317163f6388afbc3cd731acd71f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.7.0/az-go-v1.7.0-linux-arm64.tar.gz"
      sha256 "77f2dae7308f7a2b709f6af22f50e219f5bc55c2e76e22c0bb6cdf5e44f0a130"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.7.0/az-go-v1.7.0-linux-amd64.tar.gz"
      sha256 "d42ca14328395af95d567e80a15bdf3cde0af92c5e3566b6d204195d81f98b8f"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
