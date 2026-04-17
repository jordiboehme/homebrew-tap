cask "roger" do
  version "0.7.0"
  sha256 "00dfd6ccf60ae64d663b7ab5dc41e0745630dcbee0d58576d345e3249b624260"

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
