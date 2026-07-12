class EpubTailor < Formula
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-arm64.tar.gz"
      sha256 "8dc0e9869b92ffe0c28ef624b0edfeaa8625c15bf4c6d7f54269e7f77920b5b2"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-macos-amd64.tar.gz"
      sha256 "769754b8e65de039f3d41d54d62107ce45c2f62e8e0be2996769f879eca01994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-arm64.tar.gz"
      sha256 "20a046647b8d4ec7d59f1202bfbb36451bcb22ed114464df2ce3aa7d550b816e"
    end

    on_intel do
      url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/epub-tailor-v#{version}-linux-amd64.tar.gz"
      sha256 "f30161e7596c2040bc8b3bd631b0229f75ecfbc66d513cea7f416b5c75b668a0"
    end
  end

  def install
    bin.install "epub-tailor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epub-tailor --version")
  end
end
