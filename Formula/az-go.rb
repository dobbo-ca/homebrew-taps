class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.15.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.0/az-go-v1.15.0-darwin-arm64.tar.gz"
      sha256 "b57131601d87abe289e018d950dc98bcba491fa81ab64c42fe1252b4f0642239"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.0/az-go-v1.15.0-darwin-amd64.tar.gz"
      sha256 "e038f0eed82330f0a83324829e603d1fe7e8dbd30bedbc8e55fcc07246c626ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.0/az-go-v1.15.0-linux-arm64.tar.gz"
      sha256 "22a7be20f5a629a4c4042a6829dc39669424a53a401ea942ff1ad135528d46af"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.0/az-go-v1.15.0-linux-amd64.tar.gz"
      sha256 "82f52bf5469df8cc00700d1ae913dfa94d67bef6cc10745671562bf4979ccdfc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
