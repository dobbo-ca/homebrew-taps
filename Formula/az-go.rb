class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.1.3"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.3/az-go-v0.1.3-darwin-arm64.tar.gz"
      sha256 "027db581d6e9e2d1e709ea86adee51adcb3004aeea865640b2ac86a34cd65700"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.3/az-go-v0.1.3-darwin-amd64.tar.gz"
      sha256 "5d3238382a252f596039db5b8fa8b1f17a73004878fc152492ac02ed7f1e904b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.3/az-go-v0.1.3-linux-arm64.tar.gz"
      sha256 "7dd8b77bd998bfe4011fd50be60051f4b664f5a2bdd2afbdd27fd42e3fe910ba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.3/az-go-v0.1.3-linux-amd64.tar.gz"
      sha256 "af0770e5382b325c594750019c94b9b7564421de6526a955967e6a757450f13a"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
