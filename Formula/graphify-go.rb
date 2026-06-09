class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.4.0/graphify-go-v0.4.0-darwin-arm64.tar.gz"
      sha256 "cf8abc31e030229952c6d4e7559621dce24b5ae9690c9b167049a88b4aaf0624"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.4.0/graphify-go-v0.4.0-darwin-amd64.tar.gz"
      sha256 "1ca409e73691e517a8c6eb7d96de4f46feb97db17224f42f3a291637f907ddf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.4.0/graphify-go-v0.4.0-linux-arm64.tar.gz"
      sha256 "01c6d7b47824fe06dd26b27a3afc31b4e73bb7356dde367a7d820b352b2bf038"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.4.0/graphify-go-v0.4.0-linux-amd64.tar.gz"
      sha256 "09d9fb890636d408a8e8a0d460b30b1c9f6d7f381b919cc5732592200e5c1595"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
