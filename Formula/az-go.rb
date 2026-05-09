class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.41.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.41.0/az-go-v0.41.0-darwin-arm64.tar.gz"
      sha256 "6c66f1cb789f48a18dfff5f74ec845ec0df3385bf01390a799235a1baebd1b10"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.41.0/az-go-v0.41.0-darwin-amd64.tar.gz"
      sha256 "8210f096a8125bc538ee32f03d1ac36f9aea5a213cdb298bd0be3e744cfdec62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.41.0/az-go-v0.41.0-linux-arm64.tar.gz"
      sha256 "250399ef4e8bdab2f025d878a993785b6b9964d8bbe642e7510ae94fe8c3ca37"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.41.0/az-go-v0.41.0-linux-amd64.tar.gz"
      sha256 "e34b29f8fa5e71d685249c1e5abb89210371a9d04661bee39479b0c99dc3c846"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
