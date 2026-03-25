class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.34.1"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.1/az-go-v0.34.1-darwin-arm64.tar.gz"
      sha256 "3aeff6955b0798f7297131fb3e6114e1923a82555ffe2544e759d51f42ba9933"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.1/az-go-v0.34.1-darwin-amd64.tar.gz"
      sha256 "6d5354384acc9d987deed8530d06410da82c554ca3699551feb4e0ba7602c4ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.1/az-go-v0.34.1-linux-arm64.tar.gz"
      sha256 "7ec3a4202234ba54fc8dcdc75c8ff11912eebb02396112653b198d48c2675137"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.34.1/az-go-v0.34.1-linux-amd64.tar.gz"
      sha256 "ce13db445428004d73656b9186dc702ddfb50a3a1f17bc320e304d6ae0424ae1"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
