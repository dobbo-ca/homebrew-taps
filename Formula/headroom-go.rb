class HeadroomGo < Formula
  desc "Compress LLM context before it reaches the model"
  homepage "https://github.com/dobbo-ca/headroom-go"
  version "v0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-darwin-arm64.tar.gz"
      sha256 "1d0e03ad8b0c6b482edb9423f0987e53e29464fb9cfabdc6c86257211f7bf6b7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-darwin-amd64.tar.gz"
      sha256 "a8561d2f6e4e59f48297cc106aef68f9ef7a92815411d7074c629e30aac5cf05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-linux-arm64.tar.gz"
      sha256 "9b12052a517fdcb950c0e3df679b43e5c6c1b24f5ed95f202dbc00c244e6e83b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/headroom-go/releases/download/v0.1.0/headroom-go-v0.1.0-linux-amd64.tar.gz"
      sha256 "0bd10aace8c34a17b06e51fecd6cff6f147a10149b61802e1faa66f59752dbb9"
    end
  end

  def install
    bin.install "headroom"
  end

  test do
    system "#{bin}/headroom", "--version"
  end
end
