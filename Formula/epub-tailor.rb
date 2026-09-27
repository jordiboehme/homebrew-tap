class EpubTailor < Formula
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"
  license "MIT"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-arm64.tar.gz"
      sha256 "a5a2820078eba313b7727600fa32e70e2074503aacf8bec2cff6bf4daa6716d2"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-intel.tar.gz"
      sha256 "127c9a21c6665ba0310b652c41f327e74b170ed201fa911e998c38b834611aff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-arm64.tar.gz"
      sha256 "3cdf48b214c6d1b280f0035fcd5b16c6eaf22f2179e5fcfb6455598571342dd3"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-amd64.tar.gz"
      sha256 "f442e49dc144515ddcbd8d17b095ac1bb0914eff1dbd87d1bd58b39bf73dc448"
    end
  end

  def install
    bin.install "epub-tailor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epub-tailor --version")
  end
end
