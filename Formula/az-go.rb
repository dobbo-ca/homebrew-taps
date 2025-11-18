class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.28.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.28.0/az-go-v0.28.0-darwin-arm64.tar.gz"
      sha256 "d7f66e01b1c693cbc6ea32c5301273e141665ae24069b7b0406c28e8b3fdebbe"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.28.0/az-go-v0.28.0-darwin-amd64.tar.gz"
      sha256 "493826d2931b6fddf3dbe8a1b8e7c63626f69b2fb4d0af05c38cea25b3903f6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.28.0/az-go-v0.28.0-linux-arm64.tar.gz"
      sha256 "ee7f956f355ccc32047443b0ca2534b012c2f41c1987f38654c0819fc80997f9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.28.0/az-go-v0.28.0-linux-amd64.tar.gz"
      sha256 "b6b36f68df9e3aad240b2feb70319a937d757bb866875c8dbe3ab967ff748c22"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
