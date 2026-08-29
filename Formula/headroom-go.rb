class HeadroomGo < Formula
  desc "Compress LLM context before it reaches the model"
  homepage "https://github.com/dobbo-ca/headroom-go"
  version "v0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.2/headroom-go-v0.1.2-darwin-arm64.tar.gz"
      sha256 "a5731745690db4e398fa86f2dd6bdca12fd3110d4dc5115f3829d907c43c968d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.2/headroom-go-v0.1.2-darwin-amd64.tar.gz"
      sha256 "dbdb066b3bdb52870e6bf257cb5050fe1afefc04b110d031f7115ddba1e6a6de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.2/headroom-go-v0.1.2-linux-arm64.tar.gz"
      sha256 "4f8ba70fa3bfe8967d1f139bd3f5baa9010a2d60d30c657d73300410da6ad027"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.2/headroom-go-v0.1.2-linux-amd64.tar.gz"
      sha256 "6e85a8382744afd27b2365c50a724802ddb4dcf552f4943ff4c5b9558e7547fd"
    end
  end

  def install
    bin.install "headroom"
  end

  test do
    system "#{bin}/headroom", "--version"
  end
end
