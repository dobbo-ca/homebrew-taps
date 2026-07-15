class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.1/graphify-go-v0.8.1-darwin-arm64.tar.gz"
      sha256 "5964e0310e4c097ec74eec0cbc7b5c3d9b56287fa8595653211e044da83b8f3f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.1/graphify-go-v0.8.1-darwin-amd64.tar.gz"
      sha256 "234d688361f0d3ad7332bdd6fe8da7f63cce87c73d28ef7436a5797b62e7397d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.1/graphify-go-v0.8.1-linux-arm64.tar.gz"
      sha256 "c3ef1b6a42220a5899d4eaf34270f94c63424391bb8662153c2a5d870524fbc4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.8.1/graphify-go-v0.8.1-linux-amd64.tar.gz"
      sha256 "badf89783af1bb710b373d32d36e61517d3d60cce7a3aa907d781558297dea9b"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
