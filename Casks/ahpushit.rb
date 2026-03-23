cask "ahpushit" do
  version "1.0.2"
  sha256 "c2ae3abef3d8eeaac92f8f846c175e0c8933d8d151d21639d6c7f8cf6e983957"

  url "https://github.com/jordiboehme/AhPushIt/releases/download/v#{version}/AhPushIt-#{version}.dmg"
  name "AhPushIt"
  desc "macOS menu bar app that forwards notifications to external services"
  homepage "https://github.com/jordiboehme/AhPushIt"

  depends_on macos: ">= :sonoma"

  app "AhPushIt.app"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.AhPushIt.plist",
  ]
end
