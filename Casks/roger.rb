cask "roger" do
  version "0.21.0"
  sha256 "324820457a7683990c1e81c03c33890c20e42ac768c10730586e59d2a32e1c84"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  depends_on arch:  :arm64
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
