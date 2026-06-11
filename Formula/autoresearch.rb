class Autoresearch < Formula
  desc "Overnight optimization agent (Karpathy auto-research loop) on a local LLM"
  homepage "https://github.com/dobbo-ca/autoresearch"
  version "v0.1.0"

  # macOS Apple Silicon only — the managed runtime (llama-server on Metal)
  # supports darwin/arm64 today. Add stanzas as more platforms are released.
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dobbo-ca/autoresearch/releases/download/v0.1.0/autoresearch-v0.1.0-darwin-arm64.tar.gz"
      sha256 "065a31646b7f6fa7e295e45088816c3b28fda85981144d6d112749cb36821d66"
    end
  end

  def install
    bin.install "karp"
  end

  test do
    system "#{bin}/karp", "version"
  end
end
