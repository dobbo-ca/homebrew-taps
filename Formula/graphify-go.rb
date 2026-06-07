class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.1.0/graphify-go-v0.1.0-darwin-arm64.tar.gz"
      sha256 "1f2dee8759395962c9e4ea07184f2974df8b4b104ecdd36ba63a1c4ac6189b35"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.1.0/graphify-go-v0.1.0-darwin-amd64.tar.gz"
      sha256 "4cd561d5588f91175fda49df749970484ecd7ad9cddea8e4601e72650f63e213"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.1.0/graphify-go-v0.1.0-linux-arm64.tar.gz"
      sha256 "045ba137d85813059e732a79e1e5016a46d9804f51fc67ba2dcf483115688278"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.1.0/graphify-go-v0.1.0-linux-amd64.tar.gz"
      sha256 "c7521fa98ad96d40ed285b490c7a9cca1065114c8461650953857a9ddf302b91"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
