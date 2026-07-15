cask "epub-tailor-app" do
  version "0.6.0"

  on_arm do
    sha256 "a704e59096dfd39a5558d23760ca1b1ef09d778aed9c0bc93b162c3503c4ef3f"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "661858a17b24463dfeb8d719ce5d9ec64f2d4f5468ec9518a4f86cd9a1a1b20c"

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
