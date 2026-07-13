class EpubTailor < Formula
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-arm64.tar.gz"
      sha256 "faaeffa641438a037cdc08d30c5ed9d75c8e45155a8277fb94e139ecb9001ccd"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-amd64.tar.gz"
      sha256 "1707b6341f1d73d58a9c8901cfa15f875b9f5b248c49476226219edc5c3a989e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-arm64.tar.gz"
      sha256 "1f7c9701103ee11d0880931060c4ceca43cd295f65568472c4fa68afa7244835"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-amd64.tar.gz"
      sha256 "8403d7f8a1065ec9df06f37daade6b83d8d79a705e40d4f6127c10f60f2d495e"
    end
  end

  def install
    bin.install "epub-tailor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epub-tailor --version")
  end
end
