class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.2.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.2.0/az-go-v1.2.0-darwin-arm64.tar.gz"
      sha256 "60076eefa5567937ba5486586d4bc844152b36a8013c3b941b46df9f76c6ff10"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.2.0/az-go-v1.2.0-darwin-amd64.tar.gz"
      sha256 "10e55794c500b5fcaa8f54c0a2031e7b7509c8d6bfcf96b65c8abd3a5a3692c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.2.0/az-go-v1.2.0-linux-arm64.tar.gz"
      sha256 "92ac555aed44290b20fe6f704f0c0c63c0218e92435bb192b8988a4ff18ba1c1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.2.0/az-go-v1.2.0-linux-amd64.tar.gz"
      sha256 "7e0b8f617a342161c5084f2e084bda67de2eeb9b5c7994ba57686b1a1c40045a"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
