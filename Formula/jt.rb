class Jt < Formula
  desc "A fast terminal UI for Jira Cloud"
  homepage "https://github.com/dobbo-ca/jiratui"
  version "v0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.2.0/jt-v0.2.0-darwin-arm64.tar.gz"
      sha256 "b43e3d77777903e5df7164e5e9292cecc8485d986fb4aea24be31e7b5f7b0dc5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.2.0/jt-v0.2.0-darwin-amd64.tar.gz"
      sha256 "8e33e69a055dc6f266395ec1b4964a189811ab79dd5871833367e5ed349e6161"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.2.0/jt-v0.2.0-linux-arm64.tar.gz"
      sha256 "1884004706c09627bea7f7293e6910b28811a79722d71766d1d636e20aad2e6d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.2.0/jt-v0.2.0-linux-amd64.tar.gz"
      sha256 "7eec570a05dd99ac402e9932e80033901467473ea08ce993644b93cb82948220"
    end
  end

  def install
    bin.install "jt"
  end

  test do
    system "#{bin}/jt", "--help"
  end
end
