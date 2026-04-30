class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.37.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.37.0/az-go-v0.37.0-darwin-arm64.tar.gz"
      sha256 "581a9b98e784975e642abcd01ce9afba69d5d86c7ac5a0cb78f23ec10714fba8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.37.0/az-go-v0.37.0-darwin-amd64.tar.gz"
      sha256 "029fda02844ba7a5784e97277ed72aecf77015affe2af5c22b954d9a3ce10bba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.37.0/az-go-v0.37.0-linux-arm64.tar.gz"
      sha256 "39c7e3637a016b4a688d0ff8302c09402ede0edc426bae34a3508904445e93b2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.37.0/az-go-v0.37.0-linux-amd64.tar.gz"
      sha256 "23ee915888fad6fecaf60931aa792e82b1edb0f1e6683c4494de35953d3dab61"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
