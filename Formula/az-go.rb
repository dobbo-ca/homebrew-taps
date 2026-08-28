class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.12.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.12.0/az-go-v1.12.0-darwin-arm64.tar.gz"
      sha256 "68341374a102c58819f51d94a5c344fd0245fe3104b09401c92929aa5fc812b3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.12.0/az-go-v1.12.0-darwin-amd64.tar.gz"
      sha256 "fe64de2c0b6ed08327507aa44aa8a32d0067aa63cda1c257d3aad2b5f5be8103"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.12.0/az-go-v1.12.0-linux-arm64.tar.gz"
      sha256 "fe85de8e991292bb51cfc2c0be82787a682a302df0fbbdd0138aa6563c6a34f8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.12.0/az-go-v1.12.0-linux-amd64.tar.gz"
      sha256 "0f676da60b92fa47bcc92e60ba070d275b6f13c480837b8806b91f6a46de4520"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
