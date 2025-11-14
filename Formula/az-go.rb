class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.21.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.21.0/az-go-v0.21.0-darwin-arm64.tar.gz"
      sha256 "ad534724699efa3c05504dded517e3da8d89ecbd853b98e53808edc28d54265d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.21.0/az-go-v0.21.0-darwin-amd64.tar.gz"
      sha256 "0bb2b88754f1ae773a24ab9ac3c26b4729ea2f77b7ff765f26712db251a437ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.21.0/az-go-v0.21.0-linux-arm64.tar.gz"
      sha256 "cd52712e1d47fb686232c068b71042b7a3bbc750c36c02d74e7a023714d8ca7b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.21.0/az-go-v0.21.0-linux-amd64.tar.gz"
      sha256 "ce44f7766a0ae0be5927f7f956b294977492f87b1b61f0a31bc14720e683b91e"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
