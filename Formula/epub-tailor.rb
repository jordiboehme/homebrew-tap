class EpubTailor < Formula
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-arm64.tar.gz"
      sha256 "e9262573fb9a5a3cb4cdab27046c6fd3c76dbc5da47c84526645d83527b04f9d"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-intel.tar.gz"
      sha256 "6ef985a3c7831610a507e9c354d701ddf7fc19293cdd875c0d55cf94cb7a9ee7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-arm64.tar.gz"
      sha256 "95c2eeda2c9d0af572ecd3d901c6de5d149d14c18696cf8faad5b0ac0b1d9939"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-amd64.tar.gz"
      sha256 "0122170fe8d3a32caa7553db569dcaa8340320fe80acc3033f276be5cb9dd2be"
    end
  end

  def install
    bin.install "epub-tailor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epub-tailor --version")
  end
end
