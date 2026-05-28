class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.0.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.0.0/az-go-v1.0.0-darwin-arm64.tar.gz"
      sha256 "3653c7bf4206c933c50c3322cd0947539f9536291cec040a8c38e6cea052910b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.0.0/az-go-v1.0.0-darwin-amd64.tar.gz"
      sha256 "be1e204f31b59be1a7ce5a484796882942605d0815640f4d6b3e2dbbddc89d7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.0.0/az-go-v1.0.0-linux-arm64.tar.gz"
      sha256 "c87ebeeaa5c6aa9b00274e3f4438a64595efd123814301295b7acfa8e5a06ef3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.0.0/az-go-v1.0.0-linux-amd64.tar.gz"
      sha256 "81e8b6456e7a868a722f00c33c8848a633a526e91e9834e0bf8464600effbd57"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
