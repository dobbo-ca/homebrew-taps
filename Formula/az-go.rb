class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.14.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.1/az-go-v1.14.1-darwin-arm64.tar.gz"
      sha256 "8b64adfc0f166fea0dada1af64ca0a1a9d3dbb97cfbaeaf7addc9797540367e4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.1/az-go-v1.14.1-darwin-amd64.tar.gz"
      sha256 "55f10577d8c1e3b91f2fa7d42dea696b8d5127f91acd52aab03e1b1ed74c9e87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.1/az-go-v1.14.1-linux-arm64.tar.gz"
      sha256 "059b414ff68bb1522c1efb1135ebbc1fd318df5cd7d31674ad89e556b40b7e03"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.1/az-go-v1.14.1-linux-amd64.tar.gz"
      sha256 "4b87c45315baef50251a2cda144dca62fddad188061f2c9cb5fd0f9aa5950055"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
