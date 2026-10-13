class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.1/graphify-go-v0.11.1-darwin-arm64.tar.gz"
      sha256 "e72e4409895e16c2a29a6f0f93b27904804c88359ed42f1b3985e39b7fed5574"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.1/graphify-go-v0.11.1-darwin-amd64.tar.gz"
      sha256 "e1c310ab7d793c6750903c7062f5a6713b9e694531571b99922fff50b6e566dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.1/graphify-go-v0.11.1-linux-arm64.tar.gz"
      sha256 "1aa481370fcbe3d592a9c4dd1d71f9cb4892615e7cf587ab1700413e6c3830a8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.1/graphify-go-v0.11.1-linux-amd64.tar.gz"
      sha256 "e2c0e7a556d93adfd96a9ffadcbe3d5b6eef4645f2e613a3178bb01eaa1d0b0e"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
