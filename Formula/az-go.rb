class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.13.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.0/az-go-v1.13.0-darwin-arm64.tar.gz"
      sha256 "86bae6245c3335cfd726963950620b576b5777bf7f88802b7bf70205026a7a61"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.0/az-go-v1.13.0-darwin-amd64.tar.gz"
      sha256 "3899340851f5bec512c15b16771df35d51a51db098679a28d0be0af2ef0437b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.0/az-go-v1.13.0-linux-arm64.tar.gz"
      sha256 "713dd1e3db5757c1819dd98f95d2f01d2e46bc7027f1714c3243bfb5a3983dee"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.13.0/az-go-v1.13.0-linux-amd64.tar.gz"
      sha256 "5fb6d2659d3af328515943fda3cf867489e0f97931a7a9b5c10d77944132f0aa"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
