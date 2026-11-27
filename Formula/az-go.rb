class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.17.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.17.0/az-go-v1.17.0-darwin-arm64.tar.gz"
      sha256 "c587cac0e960721d4f929c9657ecd2d7b24b0175448af15b43d46f8342aff9e2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.17.0/az-go-v1.17.0-darwin-amd64.tar.gz"
      sha256 "0b70c7bbf85982fa8cf4e5b9152272fc58dfbad5bc07c3aed70bd45e821dd65f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.17.0/az-go-v1.17.0-linux-arm64.tar.gz"
      sha256 "fd1c0cec2e7041b531dd8a6987bc6dfa2f9710b35cc54bf6bfe1dcad4ecf83ca"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.17.0/az-go-v1.17.0-linux-amd64.tar.gz"
      sha256 "6d555de2beb98490f1c59971fcdc7dcf2910a796bfc2bf48d60ed9211ea838c7"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
