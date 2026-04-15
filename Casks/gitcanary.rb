cask "gitcanary" do
  version "1.2.0"
  sha256 "0060663569e9104d4073fa7d4297c7d6a7d33fec9c74ed774d06082cbf42a555"

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
