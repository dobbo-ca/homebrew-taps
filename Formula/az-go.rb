class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.17.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.17.0/az-go-v0.17.0-darwin-arm64.tar.gz"
      sha256 "e7bd9699854333fc34fde6dcf31fc395c951b7c4270665a01362250009b19775"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.17.0/az-go-v0.17.0-darwin-amd64.tar.gz"
      sha256 "9e18f6d004c08b11c59386630b54c642aefaace05f3a13b237df2dbad5466376"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.17.0/az-go-v0.17.0-linux-arm64.tar.gz"
      sha256 "bc9125adb29230e68b33016436229a2ae11c12283c574498cd372387b8ef3c40"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.17.0/az-go-v0.17.0-linux-amd64.tar.gz"
      sha256 "47f9a864e9240936ada53e236d4c92097f432bc2b56b16957d059b311f8b83a5"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
