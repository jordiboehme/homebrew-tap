cask "roger" do
  version "0.4.0"
  sha256 "2b9015943af12fa3d769c67b10405b7c7b143d259b5106793f6592e4d86a473a"

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
