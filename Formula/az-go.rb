class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.3.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.3.0/az-go-v1.3.0-darwin-arm64.tar.gz"
      sha256 "65f40db0e072578d6a1c4fdf2b10285588ea401f56b6e78bd903aa80fddbf683"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.3.0/az-go-v1.3.0-darwin-amd64.tar.gz"
      sha256 "e808d7b19f27f70f2b75796784805c700096a9187778cb606a41f8305e221cca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.3.0/az-go-v1.3.0-linux-arm64.tar.gz"
      sha256 "250dfcbc35b471db6b1142e5f10d6d0f34773d596525b33fb918c1edef6698c2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.3.0/az-go-v1.3.0-linux-amd64.tar.gz"
      sha256 "4d27f2cd35557c525dc9ce14b1156fff205b81aacac95e338c4f4add2ab627fd"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
