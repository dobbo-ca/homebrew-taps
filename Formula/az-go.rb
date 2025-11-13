class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.1.2"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.2/az-go-v0.1.2-darwin-arm64.tar.gz"
      sha256 "ada2e0cad965b6131a42d2d75d9077eef20bbddcaba50024e6077dadaa593ebb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.2/az-go-v0.1.2-darwin-amd64.tar.gz"
      sha256 "53b32c6f3ec187e3e028ea83c742a0213efd5ddbddd288f9e4ee0a6516c26082"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.2/az-go-v0.1.2-linux-arm64.tar.gz"
      sha256 "03a89f577c73ac9be6da3bd50e8f2b22ad1f2d5e930b251b56af06550786d18d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.1.2/az-go-v0.1.2-linux-amd64.tar.gz"
      sha256 "ce1dd12f0e98725ce21737d9abe6f13504ff0af40d540caaa697519929a5e48e"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
