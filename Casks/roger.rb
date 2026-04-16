cask "roger" do
  version "0.2.1"
  sha256 "c6c02ab24adfd051d1627470caa45f2275cc62e5e8bbbfe9443315308c5753aa"

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
