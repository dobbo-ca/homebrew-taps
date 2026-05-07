class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.40.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.40.0/az-go-v0.40.0-darwin-arm64.tar.gz"
      sha256 "837485967a3d4dbd75f778b641808b935946412c5fcd7d4d9bf07f9bdf1d6dbc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.40.0/az-go-v0.40.0-darwin-amd64.tar.gz"
      sha256 "a7de4863baffab6af9f340605a5543d277544476622ddb9f7fc64f237ae25e73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.40.0/az-go-v0.40.0-linux-arm64.tar.gz"
      sha256 "5b550e713ee1a4f63cc46c46dbf77957d3e36fe931097f7b71feab278545c40f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.40.0/az-go-v0.40.0-linux-amd64.tar.gz"
      sha256 "699fa1f2e8c30030855949047709403e5a7987898eaa21fd2a589a129774d877"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
