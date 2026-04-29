cask "roger" do
  version "0.14.0"
  sha256 "d8626279b5ded0c9eae86b4d0e013430194da42657c384cb9a0e9d5cf16207d5"

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
