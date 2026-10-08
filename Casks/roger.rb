cask "roger" do
  version "0.22.0"
  sha256 "cd334c6ed693055ec6812cb2bdb73e12ae34554e62fc898e42b6a6175c9269bf"

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
