class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.13.2"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.2/az-go-v1.13.2-darwin-arm64.tar.gz"
      sha256 "d742a1f4654714e7cb131063ae231a5462451a84ffb56f471d81adbea929ffdc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.2/az-go-v1.13.2-darwin-amd64.tar.gz"
      sha256 "c492c97de81d67417a159bbfc03ea81b048e3ef7f7945785c51c0b7b4c3ca03a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.2/az-go-v1.13.2-linux-arm64.tar.gz"
      sha256 "fc0aa77293b667fa571c622f945ac9a5511efc63d20ea83ac8578e4af65e4177"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.2/az-go-v1.13.2-linux-amd64.tar.gz"
      sha256 "c27381a68bdf1a43b4cdd870058dde10cd9dbefea8c26ae0c7c98d9520bdf8fc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
