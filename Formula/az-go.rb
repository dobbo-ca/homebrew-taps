class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.15.4"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.4/az-go-v1.15.4-darwin-arm64.tar.gz"
      sha256 "1b3ed39237f40bf24c48f1ec6a2f6ae7be16346612bbce953b3034ed22ab6b58"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.4/az-go-v1.15.4-darwin-amd64.tar.gz"
      sha256 "f6dd61ce318efb01f414b464cc1db46f1eed48f24c342899ee3e9753c4072b45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.4/az-go-v1.15.4-linux-arm64.tar.gz"
      sha256 "6c312e54c7698da24cf0a9febbe80fe0a1c8cedd13a312410a8d8d02aec3bf06"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.15.4/az-go-v1.15.4-linux-amd64.tar.gz"
      sha256 "12c31d84833712b501f94583247725af8e1126dbe89432e20bc32392a94e02dc"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
