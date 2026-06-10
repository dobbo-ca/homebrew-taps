class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.5.0/graphify-go-v0.5.0-darwin-arm64.tar.gz"
      sha256 "f90b369667020ed9ee6bf5049d24dbfbee0b9f16612ed28d0a7e47964aabeaac"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.5.0/graphify-go-v0.5.0-darwin-amd64.tar.gz"
      sha256 "731cd1467602122d5c4731d9ad3023239551bdd012f5ee9a4f48d6feb31fe2db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.5.0/graphify-go-v0.5.0-linux-arm64.tar.gz"
      sha256 "2d037dd4ce569fe7c4152bf1213d3e30da7abeb106746cc91d9824282372dd34"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.5.0/graphify-go-v0.5.0-linux-amd64.tar.gz"
      sha256 "75486bef5e8ede184e0db4b2708dd5c93369147e86dc15f92b82088bcc3be27c"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
