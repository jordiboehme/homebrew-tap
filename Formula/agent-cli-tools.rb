class AgentCliTools < Formula
  desc "The missing CLI commands for agent harnesses"
  homepage "https://github.com/jordiboehme/agent-cli-tools"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-arm64.tar.gz"
      sha256 "ffcfe39ff22bc98f930a21c17dd032f56d0235912d29eea1385a3facbf0775e9"
    end

    on_intel do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-intel.tar.gz"
      sha256 "e37264004b9322e9b32c172d0bcbd368403b7ef998c5ab6645c119b7e85d318c"
    end
  end

  def install
    bin.install "timeout", "nproc", "tac", "pidof", "watch", "tree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/timeout --version")
    shell_output("#{bin}/timeout 0.1 sleep 5", 124)
    assert_match(/\A\d+\Z/, shell_output("#{bin}/nproc").strip)
    assert_equal "b\na\n", pipe_output("#{bin}/tac", "a\nb\n")
  end
end
