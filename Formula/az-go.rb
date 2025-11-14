class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v0.26.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.26.0/az-go-v0.26.0-darwin-arm64.tar.gz"
      sha256 "b9449a83823f10c3defdccdb5ebf59574539a0953507a0af9771f2bf32e5be9c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.26.0/az-go-v0.26.0-darwin-amd64.tar.gz"
      sha256 "4db3e9bf7ac70c72fe910393004b262823c71c3c5457c83a5460d3f4528bb8d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.26.0/az-go-v0.26.0-linux-arm64.tar.gz"
      sha256 "505fe407c3574ecde24fe77a8f5177ba3d8b146cd7c017f2421e96f1b47b507e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v0.26.0/az-go-v0.26.0-linux-amd64.tar.gz"
      sha256 "6722564da14c43b73458f97b826cf9281d92079fdf2d988d5df7db61b34a2bdf"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
