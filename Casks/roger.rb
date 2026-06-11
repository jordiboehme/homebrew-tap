cask "roger" do
  version "0.17.0"
  sha256 "a31ffd128928bcc270f900e931683e36cdb96df56a4e4cb63d9ac212ad9b4a3b"

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
