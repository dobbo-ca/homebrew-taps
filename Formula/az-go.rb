class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.9.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.9.0/az-go-v1.9.0-darwin-arm64.tar.gz"
      sha256 "f48fba2f381b153dbbf27e33ed0bc307861d28869361d1d263b1fde0b79c6e33"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.9.0/az-go-v1.9.0-darwin-amd64.tar.gz"
      sha256 "dcff0f09a4fad06dca097e1a80239176c53e4e00151d4df017933ff024bdfbe2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.9.0/az-go-v1.9.0-linux-arm64.tar.gz"
      sha256 "23e69fd1f0d1b88eefc2175f1a559462465c0cabb1dbf716f130344d9945f74b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.9.0/az-go-v1.9.0-linux-amd64.tar.gz"
      sha256 "904291d79117ddd0200fcaa90dd3f8b752079bf3ff0d3904fbf80dcafdef7661"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
