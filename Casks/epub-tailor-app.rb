cask "epub-tailor-app" do
  version "0.6.1"

  on_arm do
    sha256 "66a87bf95017b5910d4f2b3e60890163d35dc385c32caf1893b994486f974922"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "6e2af93b39cf19aa2b0020f319a6d1073d3f32436fd4028ef47c708fdab7daed"

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
