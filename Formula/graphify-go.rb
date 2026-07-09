class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.1/graphify-go-v0.7.1-darwin-arm64.tar.gz"
      sha256 "19475e600d95d9c789729de133b32d8de49b8f1f46e3450489e0ea0160107d38"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.1/graphify-go-v0.7.1-darwin-amd64.tar.gz"
      sha256 "24e6d27b29ef8d3716f7d04f6f7c371e53a6129ad953dfc46a1aa2ab8a5b2ce7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.1/graphify-go-v0.7.1-linux-arm64.tar.gz"
      sha256 "bc9bfce43b3f58b5a025a8eb901c32e06ad853ecc566b50b6a3f4b6f97328eb5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.7.1/graphify-go-v0.7.1-linux-amd64.tar.gz"
      sha256 "963f18cb55dc09d3d39923a973ea21aa43afafb3b3c04bff97cdff9db9f52463"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
