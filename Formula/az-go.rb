class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.15.3"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.3/az-go-v1.15.3-darwin-arm64.tar.gz"
      sha256 "c3da6cd111db1c93be3970f429ede48a5099da0129f6244c3e0ff0f776599eee"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.3/az-go-v1.15.3-darwin-amd64.tar.gz"
      sha256 "fcbc299233f14007dc542182867a33ce6487731c95a0277d99a642f1a49589f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.3/az-go-v1.15.3-linux-arm64.tar.gz"
      sha256 "fa7209e7e4576c16b7cea5452e92fbf9d7c918823d0127e5f0b97988b0b1d6b1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.3/az-go-v1.15.3-linux-amd64.tar.gz"
      sha256 "6f45d9f3d7aa45f742a991a7b875fa2b953e650359c28ff8d57aef8dcaf9941a"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
