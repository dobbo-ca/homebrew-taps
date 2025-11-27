class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.30.2"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.2/az-go-v0.30.2-darwin-arm64.tar.gz"
      sha256 "e775cef3b60ea4e43c3f4a360d7a8d475c2edc93879ead6f788b12d5e38784e2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.2/az-go-v0.30.2-darwin-amd64.tar.gz"
      sha256 "b6f6db4f6f561607669d31baa7a583fe321114cd7932f224d83db267370b1f4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.2/az-go-v0.30.2-linux-arm64.tar.gz"
      sha256 "69deb8f6a432f8726766ec8305f81e6958444184adb609cf1a3bb3c896355597"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.30.2/az-go-v0.30.2-linux-amd64.tar.gz"
      sha256 "39b784efa1d04a98cbb39d832875d38e7423670d823fa004d0866e4d1aefcbcc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
