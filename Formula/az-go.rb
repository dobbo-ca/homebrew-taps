class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.7.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.7.0/az-go-v0.7.0-darwin-arm64.tar.gz"
      sha256 "d8ebbc31384b94c810b5f27df73b393d2333899963d1f42772e29d2336a542af"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.7.0/az-go-v0.7.0-darwin-amd64.tar.gz"
      sha256 "1263566203615ed5a5efd89318702a701b5dce9550fccb125986791a9aec76f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.7.0/az-go-v0.7.0-linux-arm64.tar.gz"
      sha256 "91ae6851df8aeeb74753b6b241a093f469b24aacc2c917195d05b83cfce227b1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.7.0/az-go-v0.7.0-linux-amd64.tar.gz"
      sha256 "e49c73781bf4789fe1340478e967c36d7c758505c33be65a17207832294fc74d"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
