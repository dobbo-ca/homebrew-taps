class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.14.3"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.3/az-go-v1.14.3-darwin-arm64.tar.gz"
      sha256 "471544beedfd3630e44ef674c62e82b6847fcc6a8ea119acaacab7607a6beb38"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.3/az-go-v1.14.3-darwin-amd64.tar.gz"
      sha256 "f9f94d4135b97723174dbf624ddf01e98f878caadbfd585892850ddc948ad2e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.3/az-go-v1.14.3-linux-arm64.tar.gz"
      sha256 "cdf927d8a7d775d9c8de8e0c7fcc4136b341281ef2ff6ef45df9ed472ba5e8f7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.3/az-go-v1.14.3-linux-amd64.tar.gz"
      sha256 "b1fbbbe118e4eab936901d947ba1759cbf7894f17006dda31786d5f3874bdfbd"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
