cask "roger" do
  version "0.20.1"
  sha256 "62f9af9c57fe93ad6080b9d9642f508f08dc345d9d7c0b3a14028431d5fb36d2"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  depends_on macos: :sonoma

  app "Roger.app"

  uninstall quit:   "com.jordiboehme.roger",
            signal: ["TERM", "com.jordiboehme.roger"]

  postflight do
    sleep 1
    system_command "/usr/bin/open",
                   args: ["-g", "#{appdir}/Roger.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.roger.plist",
  ]
end
