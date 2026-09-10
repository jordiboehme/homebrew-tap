class AgentCliTools < Formula
  desc "The missing CLI commands for agent harnesses"
  homepage "https://github.com/jordiboehme/agent-cli-tools"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-arm64.tar.gz"
      sha256 "3bebdb9af714b322421473dcacd84a645e7bf78075eda8a76d839a88cbfd9891"
    end

    on_intel do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-intel.tar.gz"
      sha256 "79d8914a5b798840ddea3e75e05ad793051d7fd747accd51ec35761c7b391fc3"
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
