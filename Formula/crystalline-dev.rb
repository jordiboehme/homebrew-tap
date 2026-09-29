class CrystallineDev < Formula
  desc "Local-first knowledge management for humans and AI agents (dev builds)"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.22.0-dev.2221"

  conflicts_with "crystalline", because: "both install the crystalline binary"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "935570e57d8d5ccadafb28a0ee7a8de4186f67e9ae98fe0c5c301fee9e6e6ce4"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "40dbb490f3104afcab96fd175cd022194d9b040569ee0eb419bbc68c0da5aecc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "37d096841d468423969129ced1e186bc26d86c59a6b8f37ed1a255926a51f6aa"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "2a31871469b34bb8c071c75d0c00217936a64839b22d3edc459b81deb0444238"
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
