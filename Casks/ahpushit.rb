cask "ahpushit" do
  version "1.4.2"
  sha256 "ec5f2f55ea6889b539beeefbbbce339c705b1c1d7aea6ff54901a8b416e967cf"

  url "https://github.com/jordiboehme/AhPushIt/releases/download/v#{version}/AhPushIt-#{version}.dmg"
  name "AhPushIt"
  desc "macOS menu bar app that forwards notifications to external services"
  homepage "https://github.com/jordiboehme/AhPushIt"

  depends_on macos: :sonoma

  app "AhPushIt.app"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.AhPushIt.plist",
  ]
end
