cask "roger" do
  version "0.20.2"
  sha256 "52de5f7e374f752cc415edd5e18cc230f21ea1965baabb40a27737a9e6b7d550"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "macOS menu bar app for speech-to-text dictation into any application"
  homepage "https://github.com/jordiboehme/roger"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: :sonoma

  app "Roger.app"

  postflight_steps do
    run "/bin/sleep", args: ["1"]
    run "/usr/bin/open", args: ["-g", "{{appdir}}/Roger.app"]
  end

  uninstall quit:   "com.jordiboehme.roger",
            signal: ["TERM", "com.jordiboehme.roger"]

  zap trash: "~/Library/Preferences/com.jordiboehme.roger.plist"
end
