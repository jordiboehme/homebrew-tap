cask "roger" do
  version "0.27.0"
  sha256 "1ce8b9c30a30cf5e4f994d701b57012870b047410a7e4d9ddaa42483d5d6fd14"

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
