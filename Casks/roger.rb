cask "roger" do
  version "0.21.0"
  sha256 "324820457a7683990c1e81c03c33890c20e42ac768c10730586e59d2a32e1c84"

  url "https://github.com/jordiboehme/roger/releases/download/v#{version}/Roger-#{version}.dmg"
  name "Roger"
  desc "Menu bar app for speech-to-text dictation into any application"
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
