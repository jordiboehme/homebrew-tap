cask "roger" do
  version "0.24.0"
  sha256 "7b5d1da2c1e77d430aec55c026bcc7fdc514dc62f4b28fea66c8e17d131046a5"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "Menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: :sequoia

  app "Roger.app"

  uninstall quit:   "com.jordiboehme.roger",
            signal: ["TERM", "com.jordiboehme.roger"]

  zap trash: "~/Library/Preferences/com.jordiboehme.roger.plist"
end
