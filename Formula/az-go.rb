class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.16.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.16.0/az-go-v1.16.0-darwin-arm64.tar.gz"
      sha256 "b6321e2d93fdf6a62d02b33e48d6b87614ed63676639aff4830f0aa1f229c21e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.16.0/az-go-v1.16.0-darwin-amd64.tar.gz"
      sha256 "b48494099e911bbb0cb378c406c2ed53c2a523850ccc292d28e71e7eb081a0d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.16.0/az-go-v1.16.0-linux-arm64.tar.gz"
      sha256 "a20d68260e90dcd167dbe25d58e22481bc8bb4a36a6d9070bb746da24a9bceb0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.16.0/az-go-v1.16.0-linux-amd64.tar.gz"
      sha256 "5e74eaa6c16388623542fe94b3e5c4af9aa74baa66275772cbf0ed5b47cff0f0"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
