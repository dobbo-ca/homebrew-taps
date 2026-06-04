class AzGo < Formula
  desc "Azure CLI alternative written in Go"
  homepage "https://github.com/dobbo-ca/azure-go-cli"
  version "v1.1.0"
  license "MIT"

  # Conflict with official Azure CLI
  conflicts_with "azure-cli", because: "both install 'az' binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.1.0/az-go-v1.1.0-darwin-arm64.tar.gz"
      sha256 "47839c4195cd55a16578b2f878c62fe8538f8b2bdfd7b2023cb0725619eb7938"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.1.0/az-go-v1.1.0-darwin-amd64.tar.gz"
      sha256 "6924549b86b9cf336c5006d0971b2a419f690555055c2489db5520705b9d2fbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.1.0/az-go-v1.1.0-linux-arm64.tar.gz"
      sha256 "d1f0d9d3ea6e132d84375aac520ab5c8c251f1d27f7c9dbad66987a5faca0407"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/azure-go-cli/releases/download/v1.1.0/az-go-v1.1.0-linux-amd64.tar.gz"
      sha256 "f404a09590ea87e18afda228a5bde2618c2813ab871610d0a8393aa7bbbc2512"
    end
  end

  def install
    bin.install "az"
  end

  test do
    system "#{bin}/az", "--version"
  end
end
