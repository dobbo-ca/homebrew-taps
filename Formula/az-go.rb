class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.11.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.11.0/az-go-v1.11.0-darwin-arm64.tar.gz"
      sha256 "5160a4f159a111a02982400559e62119d8416f72e41846869013d5cb0571c6b4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.11.0/az-go-v1.11.0-darwin-amd64.tar.gz"
      sha256 "2fe30503cf2cd28c9e44b456e76f08c5cc1ce05059b5478317c31267144e834b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.11.0/az-go-v1.11.0-linux-arm64.tar.gz"
      sha256 "b5eb7bec35e8cf98c29ec4d748faf8a44a8e38a98d0bd61baad026efd6e3654d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.11.0/az-go-v1.11.0-linux-amd64.tar.gz"
      sha256 "15dcc76be803a9ce3ba2a9b7e3632d3e360a203f2992ea733883c140922cdff1"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
