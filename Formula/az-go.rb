class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.6.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.6.0/az-go-v0.6.0-darwin-arm64.tar.gz"
      sha256 "639bec572925545bf4728a0b1bd07ba998413878c477ecea0620475f9d3c380a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.6.0/az-go-v0.6.0-darwin-amd64.tar.gz"
      sha256 "361ef7adb5b6a8c241b7280193c34a07cefdb5feeffd5cdc05d8013a1668e66f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.6.0/az-go-v0.6.0-linux-arm64.tar.gz"
      sha256 "ff39132f87745c0ce211f52434efd17a626b1145eda7e540a23250c4f011990c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.6.0/az-go-v0.6.0-linux-amd64.tar.gz"
      sha256 "d210b806ea8dc17a93cb02fb3da3f3e2967a8daf9e9737151e7c10958b7efdcf"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
