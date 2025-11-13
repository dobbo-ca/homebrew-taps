class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.5.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.5.0/az-go-v0.5.0-darwin-arm64.tar.gz"
      sha256 "eb9e69635373f87eca2c50abde1547314cf1a35aa6ec92e3cdcd8ef21892e1c7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.5.0/az-go-v0.5.0-darwin-amd64.tar.gz"
      sha256 "914b456dabfc922a238af2d1e5d0eff3c73ba5692dd56b5a70eeada04a1d935b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.5.0/az-go-v0.5.0-linux-arm64.tar.gz"
      sha256 "482ff0861c769e240f2c5f6f5a11fe98f852444faa776109ebe3fee9b766a9e4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.5.0/az-go-v0.5.0-linux-amd64.tar.gz"
      sha256 "ee05eb9b5505c6fb5601263b7aeb8bee62fc33a03c5c8ed5029fdd2dc4637474"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
