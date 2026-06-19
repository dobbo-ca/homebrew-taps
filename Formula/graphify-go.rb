class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.0/graphify-go-v0.7.0-darwin-arm64.tar.gz"
      sha256 "131b3b1e0ab0362723ea7ddc4e333ea6f40afefc0de7a3b71617529ee15ede12"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.0/graphify-go-v0.7.0-darwin-amd64.tar.gz"
      sha256 "3862901c2510ad539894585a32dcd4263296fcbce22c3f15b0a2b7a8323b0506"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.0/graphify-go-v0.7.0-linux-arm64.tar.gz"
      sha256 "e960dc9f48242bd6c64439c2b63238fe852e14b1b023f5a6c205b7391354c29d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.0/graphify-go-v0.7.0-linux-amd64.tar.gz"
      sha256 "4c171b11604f8fb3b75597d83e875dc4b40445d753d8bf5b9a7daec4a02f49ef"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
