class HeadroomGo < Formula
  desc "Compress LLM context before it reaches the model"
  homepage "https://github.com/dobbo-ca/headroom-go"
  version "v0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "headroom"
  end

  test do
    system "#{bin}/headroom", "--version"
  end
end
