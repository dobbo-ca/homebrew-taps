class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.0/graphify-go-v0.10.0-darwin-arm64.tar.gz"
      sha256 "03603f23f1975f31bfe3ccff7d7ddd44cb727b833f86707968aca030256235e7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.0/graphify-go-v0.10.0-darwin-amd64.tar.gz"
      sha256 "d6714aff1b4fbe1c92e9d721f3d86917c00a74bf86a81460d2a6ed2fe8df23e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.0/graphify-go-v0.10.0-linux-arm64.tar.gz"
      sha256 "0a099a9401d8d77f5783417c28f568150c3a6e7159fafba61f64ae27a4b27573"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.0/graphify-go-v0.10.0-linux-amd64.tar.gz"
      sha256 "ddf19db6ed72e57ab4736db1b092da498fa9cafa603d8577d3a886c6d75ecc81"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
