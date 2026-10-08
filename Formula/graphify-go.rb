class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.1/graphify-go-v0.10.1-darwin-arm64.tar.gz"
      sha256 "d776d0abb1af71a71770a9e57387be7543eaff30c8dd5c6f708e3a51ec8cfb2b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.1/graphify-go-v0.10.1-darwin-amd64.tar.gz"
      sha256 "3246ce6dcf6257e5c76d160808c45af38e9459c2ed444aa34a12ec948daab8c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.1/graphify-go-v0.10.1-linux-arm64.tar.gz"
      sha256 "eb9a0268192514a2ea37f7ebcff5d1be31ebb95fcada843e4cd97ae91c7ae7cc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.10.1/graphify-go-v0.10.1-linux-amd64.tar.gz"
      sha256 "dde36d5b74289a04af97ebcbd76e15c4d99b8fb5e993d2a9b4e28003fd7a947e"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
