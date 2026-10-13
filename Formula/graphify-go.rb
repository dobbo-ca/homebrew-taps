class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.0/graphify-go-v0.11.0-darwin-arm64.tar.gz"
      sha256 "0963984d50dff3c85bfd89f67fcfd01731155cc95477852dd4be16e7c59b28b2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.0/graphify-go-v0.11.0-darwin-amd64.tar.gz"
      sha256 "79a3ff9dbb8f5e2c2499a06a845715d04df82aaaef49f1ccc7ef93d72c5e42c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.0/graphify-go-v0.11.0-linux-arm64.tar.gz"
      sha256 "86d802ac495b2ae0dc30dd0d857a929472d5cdc25e70d493166b49c0de58f148"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.11.0/graphify-go-v0.11.0-linux-amd64.tar.gz"
      sha256 "1ee2d900f987784a2978febede53dcc9aa7e7206f510f6b3bcc910a0e4ab573b"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
