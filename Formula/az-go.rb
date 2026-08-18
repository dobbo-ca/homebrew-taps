class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.10.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.10.0/az-go-v1.10.0-darwin-arm64.tar.gz"
      sha256 "7b115f957a4822b97e53aa1357e82fe9df7e80111de193faf6ad87e9bf39a20c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.10.0/az-go-v1.10.0-darwin-amd64.tar.gz"
      sha256 "373bfeb454c674685a46d017eeaaec7cf7fe3350ab1c9757287320266682c1cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.10.0/az-go-v1.10.0-linux-arm64.tar.gz"
      sha256 "25714ba9438a0f650645c7e410a7589b6aa3e65f6f6dd45d2dafdf71d66938b7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.10.0/az-go-v1.10.0-linux-amd64.tar.gz"
      sha256 "f60d8683d3fa45cbad5cd6b1d703b15a926d60e61c12bcf62412b9de3e792716"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
