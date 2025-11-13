class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.2.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.2.0/az-go-v0.2.0-darwin-arm64.tar.gz"
      sha256 "f60d888d9726e4d16f35f1f590b738416b57df77d2151f9aa99b24b7f25cc368"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.2.0/az-go-v0.2.0-darwin-amd64.tar.gz"
      sha256 "b1b16ddc384fe3fa943cc1f9b43e3402856ada64b868c91999bc68508d1114c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.2.0/az-go-v0.2.0-linux-arm64.tar.gz"
      sha256 "9190525450771ef60055f60c9636b3a9a986ab0d6ea49622db3f7b8e05d088b9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.2.0/az-go-v0.2.0-linux-amd64.tar.gz"
      sha256 "e9ef7e93b483f832f2e8c855c4b7a22df3d7f42a8cdc8e22f3cbe3c981c1fef1"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
