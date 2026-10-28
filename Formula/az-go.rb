class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.15.2"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.2/az-go-v1.15.2-darwin-arm64.tar.gz"
      sha256 "17b95365502cae7508d7f656e69420eb9737754296810f4427b9634cb20b1760"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.2/az-go-v1.15.2-darwin-amd64.tar.gz"
      sha256 "277faaa01dde51d65ebc51027d7e3ed98a946b1473d49182a3c8dffe267457bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.2/az-go-v1.15.2-linux-arm64.tar.gz"
      sha256 "082d8171f19138438c882f17bbeece493726339fef91c79812272155544521f8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.2/az-go-v1.15.2-linux-amd64.tar.gz"
      sha256 "cd65001316597bf263a4d7f1fdaa1025bf322cdae4048620db9e027dd52b27ac"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
