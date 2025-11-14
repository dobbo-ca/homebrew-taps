class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.18.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.18.0/az-go-v0.18.0-darwin-arm64.tar.gz"
      sha256 "4269a25c988999ca85f3f2f65c406d133380f760958fef13b95a6206438d72bc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.18.0/az-go-v0.18.0-darwin-amd64.tar.gz"
      sha256 "7b3e038c6869a1da00f519c84e7fb5fc817bb29c57e587722443a198e64c22bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.18.0/az-go-v0.18.0-linux-arm64.tar.gz"
      sha256 "1a8b1f878dd0a751ecff3af730dce31d914125452576574f9eea502cf5be7ebd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.18.0/az-go-v0.18.0-linux-amd64.tar.gz"
      sha256 "1eec33b1220d638cf0113bd62c1dec1621be5969f90b7addb7ee7e270d178fbc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
