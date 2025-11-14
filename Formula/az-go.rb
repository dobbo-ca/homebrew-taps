class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.13.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.13.0/az-go-v0.13.0-darwin-arm64.tar.gz"
      sha256 "9447fae37ebec5dfe14f1efcba816488e31119ca25c7aabe07035b7c58f4caaf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.13.0/az-go-v0.13.0-darwin-amd64.tar.gz"
      sha256 "dee218742214684474d5cc5607880a5805518c23f5a20ceb019d0a214109b754"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.13.0/az-go-v0.13.0-linux-arm64.tar.gz"
      sha256 "b1f7cfb79b8941539fedf5be9f33614f06c7c01abc9fa51a23cc62ea0f08daaf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.13.0/az-go-v0.13.0-linux-amd64.tar.gz"
      sha256 "8a405b40b7748b33868678970413eacd5595b30b7d2e91bbbc0f36e0c90319f8"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
