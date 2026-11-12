class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.12.0/graphify-go-v0.12.0-darwin-arm64.tar.gz"
      sha256 "e1776bcad0443aed993e0412100eefd8c8ff79d57e9f0c35dcd3b7999424ec79"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.12.0/graphify-go-v0.12.0-darwin-amd64.tar.gz"
      sha256 "68b54dacad738d5a8fc91b9eb26acaa512287f55f7192e421ff0826f3eece08a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.12.0/graphify-go-v0.12.0-linux-arm64.tar.gz"
      sha256 "9194f2f2186a618f8dfaeddcbd1a27cc5e09ef38add70487233866b4e44368a4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.12.0/graphify-go-v0.12.0-linux-amd64.tar.gz"
      sha256 "e990ede498cbcf137f3415682172a040032b10bfc59b7df231aa7b145574740c"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
