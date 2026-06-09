class GraphifyGo < Formula
  desc "Turn a codebase into a queryable knowledge graph (Go/JS/TS)"
  homepage "https://github.com/dobbo-ca/graphify-go"
  version "v0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.3.0/graphify-go-v0.3.0-darwin-arm64.tar.gz"
      sha256 "1f846a92f2b6f503eb78fae1c51d5c6721a00c346a583c926d7170fbe1f9a65e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.3.0/graphify-go-v0.3.0-darwin-amd64.tar.gz"
      sha256 "201bd9b64f86963762998a14942fd8353bdba70b703e9e552896f1ec60bd2091"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.3.0/graphify-go-v0.3.0-linux-arm64.tar.gz"
      sha256 "eb174022efab6c4933a2a54ddeb18341edebaf6f1521c42d4e48de2d91b36880"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/graphify-go/releases/download/v0.3.0/graphify-go-v0.3.0-linux-amd64.tar.gz"
      sha256 "eac9e32a02f4f1c35ae29e49d72ca8c7eb4968e6d6ed895fba12510d8d411476"
    end
  end

  def install
    bin.install "graphify"
  end

  test do
    system "#{bin}/graphify", "version"
  end
end
