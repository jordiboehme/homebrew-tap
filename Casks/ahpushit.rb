cask "ahpushit" do
  version "1.3.5"
  sha256 "4a738f799e4e45c7ba110cf4e8a6c5149d6ca584b5507e09e41ee282bbc2d9fa"

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
