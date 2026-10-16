class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.14.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.0/az-go-v1.14.0-darwin-arm64.tar.gz"
      sha256 "75dcd6f25e3211ed2624761d30c55eb36ebe93670e26363e8e4295a81a1fcf72"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.0/az-go-v1.14.0-darwin-amd64.tar.gz"
      sha256 "4c4c16fd6dff1e17a1fcce35b7ac501d24f2ca08282fccfe8b2d7d9a42c24d8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.0/az-go-v1.14.0-linux-arm64.tar.gz"
      sha256 "aa9c4cb272d9837b3f613159f5f0ce39966446359a36443c214d446af16c1326"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.0/az-go-v1.14.0-linux-amd64.tar.gz"
      sha256 "f746d988bd021ae3af83a20c7373a3eda4362b8edb88ab9dab2c7201427678fb"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
