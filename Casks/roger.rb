cask "roger" do
  version "0.8.0"
  sha256 "b8e52d027ac85bc982d53c7973a9e78bd42a77652f91f9d0f6ed60016262c771"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  depends_on macos: ">= :sonoma"

  app "Roger.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-g", "#{appdir}/Roger.app"]
  end

  uninstall quit: "com.jordiboehme.roger"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.roger.plist",
  ]
end
