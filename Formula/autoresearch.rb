class Autoresearch < Formula
  desc "Overnight optimization agent (Karpathy auto-research loop) on a local LLM"
  homepage "https://github.com/dobbo-ca/autoresearch"
  # macOS Apple Silicon only — the managed runtime (llama-server on Metal)
  # supports darwin/arm64 today. The url must stay top-level: `brew tap` loads
  # every formula for every OS/arch and rejects one with no url on that platform.
  url "https://github.com/dobbo-ca/autoresearch/releases/download/v0.1.1/autoresearch-v0.1.1-darwin-arm64.tar.gz"
  version "v0.1.1"
  sha256 "b04cfbb8d51a77fda8dabecc366930f389672e48aa6b85d7ea014ae01f94324f"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "karp"
  end

  test do
    system "#{bin}/karp", "version"
  end
end
