cask "epub-tailor-app" do
  version "0.7.0"

  on_arm do
    sha256 "7eb3c0d95d001d08a087860c08c8251e30d1af127b86325b4a2dc6f9678eae79"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "515c6716c15f1a2d07d139537d3549aea6353f0092f8f74da650c9ac3d67dd7f"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-intel.dmg"
  end

  name "EPUB Tailor"
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"

  auto_updates true
  depends_on macos: :catalina

  app "EPUB Tailor.app"

  uninstall quit: "io.github.jordiboehme.epub-tailor.gui"

  zap trash: [
    "~/Library/Application Support/io.github.jordiboehme.epub-tailor.gui",
    "~/Library/Caches/io.github.jordiboehme.epub-tailor.gui",
    "~/Library/Preferences/io.github.jordiboehme.epub-tailor.gui.plist",
    "~/Library/Saved Application State/io.github.jordiboehme.epub-tailor.gui.savedState",
    "~/Library/WebKit/io.github.jordiboehme.epub-tailor.gui",
  ]
end
