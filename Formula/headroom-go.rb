class HeadroomGo < Formula
  desc "Compress LLM context before it reaches the model"
  homepage "https://github.com/dobbo-ca/headroom-go"
  version "v0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.1/headroom-go-v0.1.1-darwin-arm64.tar.gz"
      sha256 "070d0b05ff651c872035715421bfb786bf8e6c41b30d82734fcd6a231beada10"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.1/headroom-go-v0.1.1-darwin-amd64.tar.gz"
      sha256 "0b7e58ee9c817c48d68dde1638e2de3c54151ac3c30703f29fca0460e8aad84e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.1/headroom-go-v0.1.1-linux-arm64.tar.gz"
      sha256 "bc628ffd0115b41f1f6c0207f56ab0ed2d5eb579bcb2cc9b4b147a4474d21d6e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.1/headroom-go-v0.1.1-linux-amd64.tar.gz"
      sha256 "595b0ec087d3a505a58b4a6fb413cc459905aa6032cf34d583e9fd3ebfbb0515"
    end
  end

  def install
    bin.install "headroom"
  end

  test do
    system "#{bin}/headroom", "--version"
  end
end
