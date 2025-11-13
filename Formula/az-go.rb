class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.3.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.3.0/az-go-v0.3.0-darwin-arm64.tar.gz"
      sha256 "c4a6a173cded86033af470b169570653f161815b6b20a0b0698bdc938c35d130"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.3.0/az-go-v0.3.0-darwin-amd64.tar.gz"
      sha256 "01ea99c4ae52ecd6159980b9e867768919f88d49d0ac38981da0445b13953d6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.3.0/az-go-v0.3.0-linux-arm64.tar.gz"
      sha256 "1269d5e447adfccbb6b7360594b9ed574fe3be0a1472b2639d0e2596116b2372"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.3.0/az-go-v0.3.0-linux-amd64.tar.gz"
      sha256 "c466f71a6d1215144ca0bab69822cf32d0df222e73ca9ae3f926d565bee68127"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
