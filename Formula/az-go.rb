class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.34.2"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.2/az-go-v0.34.2-darwin-arm64.tar.gz"
      sha256 "daa1687902647de9430584d1245262f2a3686a32dad6dee9c23b362af37f41ef"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.2/az-go-v0.34.2-darwin-amd64.tar.gz"
      sha256 "f54e54e78d996a7dbfad6b3cb5aa705f39f999e4abb66c6f0ccc9b183e3931dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.2/az-go-v0.34.2-linux-arm64.tar.gz"
      sha256 "747799bd8e178c5975d14b7f57890712039bd5c183d351ec19efe552c60dc052"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.2/az-go-v0.34.2-linux-amd64.tar.gz"
      sha256 "8ed1c6d490210bb14c896f15b5c1096efd1f1e4ada5bf0e27fcebaf1553e5ff4"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
