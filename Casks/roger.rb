cask "roger" do
  version "0.11.1"
  sha256 "b3498f0d9082443904345973939b8c739704ff5d3d5e961ec6669c8eafc5b0e8"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  depends_on macos: ">= :sonoma"

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
