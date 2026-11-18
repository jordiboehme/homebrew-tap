class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.34.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "610b821acb64cd847b1bc2cd504a5d17400e1d4158313158429251521f81bd82"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "18e312513ad1ff86fe3947a10016160e8d0c1821de9fd8228b81aefba4d2401e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "699bc081162a4b653fb88766051a063ab879377de97b0d8861c572b3e15c2fb6"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "ea618f024242f2e752fd262cc677348f20b83c66e3a10ef54a3f466406477ede"
    end
  end

  def install
    bin.install "crystalline"
    (libexec/"install-source").write "homebrew\n"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
