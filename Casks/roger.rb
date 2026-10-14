cask "roger" do
  version "0.25.0"
  sha256 "74412a82c09353fd2c22410224d34f8743ebac4de305b03f6c957c02e3ee1395"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "Menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: :sequoia

  app "Roger.app"
  binary "#{appdir}/Roger.app/Contents/MacOS/roger-mcp"

  uninstall quit:   "com.jordiboehme.roger",
            signal: ["TERM", "com.jordiboehme.roger"]

  zap trash: "~/Library/Preferences/com.jordiboehme.roger.plist"
end
