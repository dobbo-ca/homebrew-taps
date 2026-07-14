class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.0/graphify-go-v0.8.0-darwin-arm64.tar.gz"
      sha256 "ed8a9eda71455ed0420a3086479ef6b4d1f10131c642f23bac57eeb2dc70e32a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.0/graphify-go-v0.8.0-darwin-amd64.tar.gz"
      sha256 "4b086a92b6929ae8d1fc9347712d0641bd7f7df01ef8f478850a31b72aadbe78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.0/graphify-go-v0.8.0-linux-arm64.tar.gz"
      sha256 "bbbdfcbd867e40cf9d3ec88a595cae3180592a9402a2977c81d13c632ab4e129"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.0/graphify-go-v0.8.0-linux-amd64.tar.gz"
      sha256 "4705e15412deb6c3887addd86fae4ed3a70c61a7a5174e2c69000c631d6477b3"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
