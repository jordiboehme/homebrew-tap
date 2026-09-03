class AgentCliTools < Formula
  desc "The missing CLI commands for agent harnesses"
  homepage "https://github.com/jordiboehme/agent-cli-tools"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-arm64.tar.gz"
      sha256 "cef9d223ee9c684509dc9ddec1b00070cd901846aa6ab1754536f93ceb0873a2"
    end

    on_intel do
      url "https://github.com/jordiboehme/agent-cli-tools/releases/download/v#{version}/agent-cli-tools-v#{version}-macos-intel.tar.gz"
      sha256 "34813bab397593eda1ff267a989e319210430c00e5a687f9549efc7ed012cbe6"
    end
  end

  def install
    bin.install "timeout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/timeout --version")
    shell_output("#{bin}/timeout 0.1 sleep 5", 124)
  end
end
