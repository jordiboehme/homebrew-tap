class CrystallineDev < Formula
  desc "Local-first knowledge management for humans and AI agents (dev builds)"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.22.0-dev.2229"

  conflicts_with "crystalline", because: "both install the crystalline binary"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "4ef5f1d6154c88685a6be8435436e702b9a9459030d7581ec6b2d5d729d97ab3"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "e979579e3cbc6920e18f5a679d6a3e12cce5b5ca2d88aec60eb5fff66e26dd43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "c7b997c33b9715defb131cec3120c71ae6943f16211f6379e3318c943d4387ce"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "69c32d6b943609434389f0ac9b1d234e9daf40dea5d516d0fdc08c3a47596c26"
    end
  end

  def install
    bin.install "crystalline"
  end

  def caveats
    <<~EOS
      This is a dev build from main. It may migrate your index, and going back to an older stable release is not supported.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
