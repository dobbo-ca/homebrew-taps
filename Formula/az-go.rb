class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.25.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.25.0/az-go-v0.25.0-darwin-arm64.tar.gz"
      sha256 "b33fc3a843c0a509c7191c2a689bab06cf3a0ced78b9ba4f17024aa4d182d485"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.25.0/az-go-v0.25.0-darwin-amd64.tar.gz"
      sha256 "c1749e76b5af293ae5ccef2fb3ef2967adee944826483b809b4a92ea276a161c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.25.0/az-go-v0.25.0-linux-arm64.tar.gz"
      sha256 "a674e30bbb6493024f490cddf77a614efd4a150916b37c3c72d37dbad0286f13"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.25.0/az-go-v0.25.0-linux-amd64.tar.gz"
      sha256 "21ba90c3027b2b556dc9f93055f7955e392c95185a9f475f0cfdcea5f3985ce6"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
