cask "roger" do
  version "0.2.0"
  sha256 "c4350910d77c02b93237cb058ff97c4984537281aabcea754481b72013c18bda"

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
