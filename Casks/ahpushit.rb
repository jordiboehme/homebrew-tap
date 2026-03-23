cask "ahpushit" do
  version "1.1.0"
  sha256 "4b792285b2ab1dab963a06fcbad7cb584405f0f801c52c442b88598c72af1f3e"

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
