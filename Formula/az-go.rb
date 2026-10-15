class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.13.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.1/az-go-v1.13.1-darwin-arm64.tar.gz"
      sha256 "35e5151e955ff8824dfc6ebf80f086cd1fdda85d11a10d35d7698ac3225df8e9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.1/az-go-v1.13.1-darwin-amd64.tar.gz"
      sha256 "b83faaec64d9ccaa87dfb79d3e6712f6f2f58b90c9800d946973aa1f2cc41dfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.1/az-go-v1.13.1-linux-arm64.tar.gz"
      sha256 "b26dc0f032c319aea46bc39bc6dd77d68242a6d3e3b8a20584943be95921241f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.1/az-go-v1.13.1-linux-amd64.tar.gz"
      sha256 "50e223ba0af78b09a7236966adf85b55399c8c3d3cacae22b56fd5fd46e859a6"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
