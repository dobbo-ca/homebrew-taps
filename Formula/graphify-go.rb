class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.2.0/graphify-go-v0.2.0-darwin-arm64.tar.gz"
      sha256 "368191c6488c2cec962fe1f9ad5af140c65f2d158fab67bbee2d21f5b9943766"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.2.0/graphify-go-v0.2.0-darwin-amd64.tar.gz"
      sha256 "f61ac4ad02efd9722aa4c34a06e3895532f2ad183a325ff90bd9c20eeeb47058"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.2.0/graphify-go-v0.2.0-linux-arm64.tar.gz"
      sha256 "57753dad7fd1521bf8f9943be5751cb7ee89537fe5d96a36e0ccba1cb794166e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.2.0/graphify-go-v0.2.0-linux-amd64.tar.gz"
      sha256 "897d036af39cf4ab9cc9e810c30d40632089c0b9b98c9bbb8bb60213dd7ddca3"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
