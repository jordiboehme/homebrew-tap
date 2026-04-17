cask "roger" do
  version "0.6.2"
  sha256 "3e599f66ba959edb0de126f3cef72d83a998419322c8472398b3fdd401d4383e"

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
