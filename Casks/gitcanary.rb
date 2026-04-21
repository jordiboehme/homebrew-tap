cask "gitcanary" do
  version "1.5.2"
  sha256 "866311700c240414d650a7c9784319332ca15a305c0c4014a5f3adf86ee42904"

  url "https://github.com/jordiboehme/GitCanary/releases/download/v#{version}/GitCanary-#{version}.dmg"
  name "GitCanary"
  desc "macOS menu bar app that monitors git repos and provides AI-generated summaries of remote changes"
  homepage "https://github.com/jordiboehme/GitCanary"

  depends_on macos: ">= :sonoma"

  app "GitCanary.app"

  uninstall quit:   "com.jordiboehme.GitCanary",
            signal: ["TERM", "com.jordiboehme.GitCanary"]

  postflight do
    sleep 1
    system_command "/usr/bin/open",
                   args: ["-g", "#{appdir}/GitCanary.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.GitCanary.plist",
  ]
end
