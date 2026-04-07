class Jt < Formula
  desc "A fast terminal UI for Jira Cloud"
  homepage "https://github.com/dobbo-ca/jiratui"
  version "v0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.0.0/jt-v0.0.0-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.0.0/jt-v0.0.0-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.0.0/jt-v0.0.0-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.0.0/jt-v0.0.0-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "jt"
  end

  test do
    system "#{bin}/jt", "--help"
  end
end
