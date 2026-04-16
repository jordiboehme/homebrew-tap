cask "roger" do
  version "0.3.0"
  sha256 "d23fdf53c0abe008f99475c9122e032fc5c1d6e93f0bf71e31f7a1018f938d2b"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  depends_on macos: ">= :sonoma"

  app "Roger.app"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.roger.plist",
  ]
end
