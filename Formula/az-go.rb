class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.31.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.1/az-go-v0.31.1-darwin-arm64.tar.gz"
      sha256 "513f829e96c4ef2de8a7109857d1c86dd9178bb8c2a4377154441a3f0215bb6c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.1/az-go-v0.31.1-darwin-amd64.tar.gz"
      sha256 "dfc1ee03a49e006a064b5a26fa9d5052e2bca523b226819768ac050db04ff4cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.1/az-go-v0.31.1-linux-arm64.tar.gz"
      sha256 "77d04545cef655b740920465607afe97c9188b301a0b5b6d782f9f1a3d9b2fc5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.31.1/az-go-v0.31.1-linux-amd64.tar.gz"
      sha256 "55fb1c8a174e48823490daf5463503918bc8bcd9d63cd1088d824881559733e7"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
