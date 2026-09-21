class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.9.0/graphify-go-v0.9.0-darwin-arm64.tar.gz"
      sha256 "32930def2dc6cefcc479f2092d9af9689f30ba83e9f808d8c14636a0b17b5bfd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.9.0/graphify-go-v0.9.0-darwin-amd64.tar.gz"
      sha256 "63952a161d1e972849d0b9cab19c706d0343d382882ca146e241b5d1a39b2dd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.9.0/graphify-go-v0.9.0-linux-arm64.tar.gz"
      sha256 "317336277713e25649a29b94b29758a195d608a6cb552aa4cc9e8152f5e96550"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.9.0/graphify-go-v0.9.0-linux-amd64.tar.gz"
      sha256 "ec96daed2259972316592b7f9c7a80b1347fece0f39cee4a409f081abe92a7a4"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
