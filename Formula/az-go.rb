class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.24.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.24.0/az-go-v0.24.0-darwin-arm64.tar.gz"
      sha256 "ccb91c4216bbc8f646ea68c987bdb9852075b347f815b0ad79b6108dc0252a9a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.24.0/az-go-v0.24.0-darwin-amd64.tar.gz"
      sha256 "218ab423c72654d169a1856c3c7cbac363d8fbd1b22cffd1af8de8972a5e209b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.24.0/az-go-v0.24.0-linux-arm64.tar.gz"
      sha256 "26f917a2459bca40d204762b3dd2f05f29b577f9f9f4d555827b4d0ea2b75bf7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.24.0/az-go-v0.24.0-linux-amd64.tar.gz"
      sha256 "59b33fbd3044081f2ef77d44921cf5d5c304606725aa557e89bd2ce01a1775a9"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
