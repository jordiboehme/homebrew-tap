cask "gitcanary" do
  version "1.0.2"
  sha256 "8f24c2f31151f46b7964e7d6eb4d482db77a56e3e54e6d6cde477766f04b5dd6"

  url "https://github.com/jordiboehme/GitCanary/releases/download/v#{version}/GitCanary-#{version}.dmg"
  name "GitCanary"
  desc "macOS menu bar app that monitors git repos and provides AI-generated summaries of remote changes"
  homepage "https://github.com/jordiboehme/GitCanary"

  depends_on macos: ">= :sonoma"

  app "GitCanary.app"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.GitCanary.plist",
  ]
end
