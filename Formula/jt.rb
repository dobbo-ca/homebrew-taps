class Jt < Formula
  desc "A fast terminal UI for Jira Cloud"
  homepage "https://github.com/dobbo-ca/jiratui"
  version "v0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.1.0/jt-v0.1.0-darwin-arm64.tar.gz"
      sha256 "c5c635fffead3e416c5ae34738f9dffc5e96a34406e941e215721e27c0f12c12"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.1.0/jt-v0.1.0-darwin-amd64.tar.gz"
      sha256 "c76ae021446168c7a72e7f25b147391e55e0b21c8fb2302f066270aca0c6f797"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.1.0/jt-v0.1.0-linux-arm64.tar.gz"
      sha256 "85f13b22b4980d378b7d7f173da8eeb22a82f6bb75a4ef966299544b1891e561"
    end
    if Hardware::CPU.intel?
      url "https://github.com/dobbo-ca/jiratui/releases/download/v0.1.0/jt-v0.1.0-linux-amd64.tar.gz"
      sha256 "8789ea1ea30de384d8de82e3fea665366ac9b700a8545f258736ba532b7546ae"
    end
  end

  def install
    bin.install "jt"
  end

  test do
    system "#{bin}/jt", "--help"
  end
end
