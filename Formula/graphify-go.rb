class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.6.0/graphify-go-v0.6.0-darwin-arm64.tar.gz"
      sha256 "ade9ddea90ea26a8283fc2aac8716c73cc10e5aa696f70230d68a36d266db163"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.6.0/graphify-go-v0.6.0-darwin-amd64.tar.gz"
      sha256 "43b5a47ae555aab4a1e82251550e63aa827b2d8baaef74983cbd813c247ee806"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.6.0/graphify-go-v0.6.0-linux-arm64.tar.gz"
      sha256 "324df872e77ff635464d996ddbb61c1daac3e0a72ebd64136c5c0311cb34f81a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.6.0/graphify-go-v0.6.0-linux-amd64.tar.gz"
      sha256 "143a34ff4c1f1f93666e3bfa03ef1b4f68475283bbf16b91f358cf3390d0f2c2"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
