class AgentCliTools < Formula
  desc "The missing CLI commands for agent harnesses"
  homepage "https://github.com/jordiboehme/agent-cli-tools"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-arm64.tar.gz"
      sha256 "ccd965a2fb2cde5e1a246bb896e6bcaf2b0b2382ee1a040486630e3ce5bbd5de"
    end

    on_intel do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-intel.tar.gz"
      sha256 "47a0570b497f6924167b776a1bf07ade2e158003ee7d9ab9ac7c520324908807"
    end
  end

  # tree and watch are homebrew-core formulae. Shipping binaries by
  # those names would collide on link and, because one conflict
  # unlinks the whole keg, would take timeout down with them.
  depends_on "tree"
  depends_on "watch"

  def install
    bin.install "timeout", "nproc", "tac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/timeout --version")
    shell_output("#{bin}/timeout 0.1 sleep 5", 124)
    assert_match(/\A\d+\Z/, shell_output("#{bin}/nproc").strip)
    assert_equal "b\na\n", pipe_output("#{bin}/tac", "a\nb\n")
  end
end
