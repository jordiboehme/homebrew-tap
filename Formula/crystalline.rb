class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.35.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "d0783b0be84b80b14015147144f12ed52c6144da4ccc6a23ddefc3a27157e9cb"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "7e494b8e583b426cba499fadaaf02d279ebe6f963bb2f9992d58c5a3eadee9a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "c4079f5958203e4fb3d13ae677ff2b65ecc50844e7c04b5b7a8e5b0d2bf98dae"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "f1336fdcc39ec40c75ceaf8e546f30841a2aa00e10930f3e234c941b1fe5247b"
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
