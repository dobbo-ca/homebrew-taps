class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.15.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.1/az-go-v1.15.1-darwin-arm64.tar.gz"
      sha256 "bf9f4a5dfd904f2ba9d0f56e7a09df5d1ce779678ea74fa0f5e17be683f93eea"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.1/az-go-v1.15.1-darwin-amd64.tar.gz"
      sha256 "903458e711c7cd77afb5fbeff13982cf8bfbeb09bd2709daeea62c6575fa11df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.1/az-go-v1.15.1-linux-arm64.tar.gz"
      sha256 "cd6a4c5963924637f7bae79bd72e0e01485074118208b940425dd2bcdc529416"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.1/az-go-v1.15.1-linux-amd64.tar.gz"
      sha256 "73dafedfcf894bea5b1a7491c21d0b80e6844c7537db9a36e0ff5476daa4ca11"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
