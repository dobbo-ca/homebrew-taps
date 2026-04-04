class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.36.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.0/az-go-v0.36.0-darwin-arm64.tar.gz"
      sha256 "600c51a368009437194282d895f2d6dcefc01ed89d1cccbcd3a0d5d1f0361660"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.0/az-go-v0.36.0-darwin-amd64.tar.gz"
      sha256 "27e1c721e8b794fdd30d5ddfe72919cd779b8e501d4b631295a7784f2c122aea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.0/az-go-v0.36.0-linux-arm64.tar.gz"
      sha256 "dc9733d57d87180a2dc4f5a442d9511f96c913f2902fe170ecc8e5dd71d49a2d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.36.0/az-go-v0.36.0-linux-amd64.tar.gz"
      sha256 "1ef09b8a39c5ee8a0e942ed25c50a5b5e272b7bb916a5acfec96ff06d7512bcc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
