class EpubTailor < Formula
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-arm64.tar.gz"
      sha256 "125b61c94a1165a8fa3b23264fd1f7485c7c6e18d025d2c2eb9460cb6f3defa3"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-amd64.tar.gz"
      sha256 "18cd990e142c8461a5bb29e8a360bc2982b91e9997d7a030fb0a5b7680aa30af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-arm64.tar.gz"
      sha256 "fcc835c2e05220c92103dde2517d3b3fd6560e547fd0f99c202f9e8e5270eaf0"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-amd64.tar.gz"
      sha256 "81f95975dad8cae8d3bbc13eae77f0d7853b1c82267e9c37b69f74faac79076b"
    end
  end

  def install
    bin.install "epub-tailor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epub-tailor --version")
  end
end
