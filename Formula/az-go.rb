class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.29.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.29.0/az-go-v0.29.0-darwin-arm64.tar.gz"
      sha256 "fb83390111de0e09353bd80700d24718e444f8aac8d4231e5ea7445338ab983d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.29.0/az-go-v0.29.0-darwin-amd64.tar.gz"
      sha256 "535150ba60aa0bd296eca6632c875ed05d28b816b2cd51432f106236c2ae6057"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.29.0/az-go-v0.29.0-linux-arm64.tar.gz"
      sha256 "677779bd6bc619969562e9e249543fbafab4243a6dfecfe0cf618e59bf27cb00"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.29.0/az-go-v0.29.0-linux-amd64.tar.gz"
      sha256 "bb2ebf368c70ecbe13b9336c7ab20f29f223d1d12dfe1bb368d7176bf3153c76"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
