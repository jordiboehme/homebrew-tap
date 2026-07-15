cask "epub-tailor-app" do
  version "0.5.0"

  on_arm do
    sha256 "58d521a2794440117848c6fbdd8bdc5d34081007038caba9e275d1c7d928dc8b"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "00ac3a0ae8541292e5f51baa40961425fed30925f722bf880fd88d7c7bc2ec10"

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
