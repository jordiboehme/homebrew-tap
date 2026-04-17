cask "roger" do
  version "0.6.0"
  sha256 "1269a4c2f9388e54d2f77e67266243f18e3d16234c4df54bd0029ca8b5e06395"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  depends_on macos: ">= :sonoma"

  app "Roger.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-gj", "#{appdir}/Roger.app"]
  end

  uninstall quit: "com.jordiboehme.roger"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.roger.plist",
  ]
end
