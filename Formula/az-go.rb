class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.33.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.33.0/az-go-v0.33.0-darwin-arm64.tar.gz"
      sha256 "a94dc3f7a5a8b12994756d8dc15396366edd6ffa694ba360ff2d5dc1d739f14e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.33.0/az-go-v0.33.0-darwin-amd64.tar.gz"
      sha256 "e83cb8d0c9269afe31f709c8c470f590fa87f602233eb1e8350de54da35798fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.33.0/az-go-v0.33.0-linux-arm64.tar.gz"
      sha256 "6e9f0f098e785948474b232f119e28d7fcb784f25bef8e75e22b4a0a0592471e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.33.0/az-go-v0.33.0-linux-amd64.tar.gz"
      sha256 "b3df26c67d8546a34c85405658793727ebee004bd7f15373b05851109ea27417"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
