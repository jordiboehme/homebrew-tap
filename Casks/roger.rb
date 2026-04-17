cask "roger" do
  version "0.3.1"
  sha256 "6d2b9bc84ed0cc77ccf46aca251f62cd66a630f9ddab507edfc63e6aae641d14"

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
