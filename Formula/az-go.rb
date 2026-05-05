class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.39.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.1/az-go-v0.39.1-darwin-arm64.tar.gz"
      sha256 "79e2e4ca1231742c0bc22484480b8b30e5fa5a4fd52f442e8fa804aa7b3d2530"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.1/az-go-v0.39.1-darwin-amd64.tar.gz"
      sha256 "83b524e9984d02c717da2d8a7e8d05e186151a34b8b5816e2b78c6f5e3948fbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.1/az-go-v0.39.1-linux-arm64.tar.gz"
      sha256 "02e2387ce1167f09b16e81b58fdbb6d06e17cfb2ca8d47cb2012512931dc0567"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.39.1/az-go-v0.39.1-linux-amd64.tar.gz"
      sha256 "8de236061d214545c0eff8913a56c13b2e2e02926a6674c8e35c7888e9a9951c"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
