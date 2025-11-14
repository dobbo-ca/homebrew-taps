class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.10.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.10.0/az-go-v0.10.0-darwin-arm64.tar.gz"
      sha256 "a835217bd7d959d09294410f9114d9e5b295b20d385a4e222109d9d896dfbb20"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.10.0/az-go-v0.10.0-darwin-amd64.tar.gz"
      sha256 "c248a4e62f4822254903e66358dffd47738e3438f0f4e32a2923ff1e1fb9d1f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.10.0/az-go-v0.10.0-linux-arm64.tar.gz"
      sha256 "f33d4bbb9ce21ac2a5ff040d62220368973a972afffaee5c2134f18539b7ea4d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.10.0/az-go-v0.10.0-linux-amd64.tar.gz"
      sha256 "fb1aeb687b51a8426b9d0dfb3ca6e7a5f27abb71268d74bf8c2693ae53a62c87"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
