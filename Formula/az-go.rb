class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.1.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.1/az-go-v0.1.1-darwin-arm64.tar.gz"
      sha256 "8a511fe57ab633c9ac9225b95fe000a917cdf308a81fe859256af1ac5950c8b3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.1/az-go-v0.1.1-darwin-amd64.tar.gz"
      sha256 "3785144d4c9a5d51538f4229596e0f7a90d7fa90ebf69e61179513df75b1d01a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.1/az-go-v0.1.1-linux-arm64.tar.gz"
      sha256 "76a5c159c76b40dca6cecb2def7d34316074e1c5613bed733b6b4ff7c6ef993c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.1/az-go-v0.1.1-linux-amd64.tar.gz"
      sha256 "35365de38163778209eb7e8d9cd6a59192aded8c1548c195ae8a5a834ea8da15"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
