class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.15.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.15.0/az-go-v0.15.0-darwin-arm64.tar.gz"
      sha256 "ad67351c3cfe8d04d47569ff058336d80c5e4db7fd54434832cd8665f226f50a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.15.0/az-go-v0.15.0-darwin-amd64.tar.gz"
      sha256 "807b591a4320274cdbacafc734899b29fbe7a441b176353bc9722cb92c183f81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.15.0/az-go-v0.15.0-linux-arm64.tar.gz"
      sha256 "e3e8ae6d4a6bc9e429970b023bcc6673fa50fc84f451ef69c7be7edfca365962"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.15.0/az-go-v0.15.0-linux-amd64.tar.gz"
      sha256 "bd68478b1e270ceeda057cc7914445e36f13773f62f40d632daa7821836ee870"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
