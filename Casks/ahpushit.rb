cask "ahpushit" do
  version "1.3.7"
  sha256 "6d239a80fac1e472b0b7e70b1082e6ebae548ff39444e3ffbb2d43759fe8cc37"

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
