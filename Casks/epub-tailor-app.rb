cask "epub-tailor-app" do
  version "0.12.0"

  on_arm do
    sha256 "c7e5efad88a4943e1afdb1ca1e8875d6f53d9c621c0e1013574f75ef6d30a7ff"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-arm64.dmg"
  end

  on_intel do
    sha256 "c601269c5065083f6ce7f81d3890844ef79256748a6cb45807215e843f96d7b7"

    url "https://github.com/jordiboehme/epub-tailor/releases/download/v#{version}/EPUB-Tailor-v#{version}-macos-intel.dmg"
  end

  name "EPUB Tailor"
  desc "Clean, fix and tailor EPUB books to fit your e-reader"
  homepage "https://github.com/jordiboehme/epub-tailor"

  auto_updates true
  depends_on macos: :sonoma

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
