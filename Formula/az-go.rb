class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.5.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.5.0/az-go-v1.5.0-darwin-arm64.tar.gz"
      sha256 "f82a137ff84e97ae55faac7725d399628bf9fcf45888a30669de021ef93d06ac"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.5.0/az-go-v1.5.0-darwin-amd64.tar.gz"
      sha256 "c0e00c6ca156f8e5f80753307cf6184beb31c73cb85e3f5c9da0dd11b75106ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.5.0/az-go-v1.5.0-linux-arm64.tar.gz"
      sha256 "614b1732de04700108e65565803a9d66a2230870a7997b70855c82a9486f2183"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.5.0/az-go-v1.5.0-linux-amd64.tar.gz"
      sha256 "06c0b041a482ca3aab1fb860f0e6bce7ad1e1049ae861212f83733e6b2be43fd"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
