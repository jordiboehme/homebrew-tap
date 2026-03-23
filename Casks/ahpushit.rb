cask "ahpushit" do
  version "1.3.0"
  sha256 "3d30bcbcd5ea25a1d4b5c2ca83a3ee914a3a3a8ed46bc98b85741eb02bae1c79"

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
