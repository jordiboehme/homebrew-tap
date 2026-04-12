cask "gitcanary" do
  version "1.0.0"
  sha256 "59ca99d66c4f8c587a8af8d9b02ad342ec9af70c7ed01c76e93c3642465d5546"

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
