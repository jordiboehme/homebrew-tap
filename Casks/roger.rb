cask "roger" do
  version "0.1.0"
  sha256 "a266c4d5991339322a988a16fe36c696fffc1116f02295ec0109383542be2a48"

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
