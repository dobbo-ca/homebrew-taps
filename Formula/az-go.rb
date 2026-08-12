class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.8.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.8.0/az-go-v1.8.0-darwin-arm64.tar.gz"
      sha256 "37f82fde41b76529768ccddc7dcdeb4abd766531754ec71c8bec6f6e5a3a5a79"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.8.0/az-go-v1.8.0-darwin-amd64.tar.gz"
      sha256 "37769288c6ad3b2c6b377a54b81a3321e961516bf03f7d894ee4d3e85a1855fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.8.0/az-go-v1.8.0-linux-arm64.tar.gz"
      sha256 "cb3f19bf7e11b8196fd3c3040e13a9a8d3f1e2d789f72ce7cc8ff0ccb95b44c6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.8.0/az-go-v1.8.0-linux-amd64.tar.gz"
      sha256 "6a7ed81f1368de40e7d438554c882a52cc65eb0842d7c0c383b6c65c6d84ce04"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
