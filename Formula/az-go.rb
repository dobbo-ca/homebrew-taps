class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.14.2"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.2/az-go-v1.14.2-darwin-arm64.tar.gz"
      sha256 "863f34c78d6aa28886bc5739a93e725901a463933f2396f9243b1a4802992006"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.2/az-go-v1.14.2-darwin-amd64.tar.gz"
      sha256 "3c632b9da449a68c57abacaaed63cc0c2138dd1c74cc014c817048dfba5287a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.2/az-go-v1.14.2-linux-arm64.tar.gz"
      sha256 "c955807af6f4368ebbb9feb56c6ea75f6a815ff249b1eb4d1bcd683627fc558a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.14.2/az-go-v1.14.2-linux-amd64.tar.gz"
      sha256 "d3395739f96f131d83e7d8c72ec49d64da7cfb7a28079c793b5c794f20d91260"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
