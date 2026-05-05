class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.38.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.38.0/az-go-v0.38.0-darwin-arm64.tar.gz"
      sha256 "9fa979fea179ad5210ca026a2ebc3a8cef0dc57c12198dd52e3f498b609907da"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.38.0/az-go-v0.38.0-darwin-amd64.tar.gz"
      sha256 "98e1667118e406fb9b18e64cc51a46e84d8673023be8aa7b36b75c55cd56e304"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.38.0/az-go-v0.38.0-linux-arm64.tar.gz"
      sha256 "ab819e60fbddd5c969a3f14bbdb8a30c91cf7c30f7fa9ba48e7d96c26032316d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.38.0/az-go-v0.38.0-linux-amd64.tar.gz"
      sha256 "2b25541567f66aad33b8c7024b89cac784ef8cbc7907430186cf716d4a3204fc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
