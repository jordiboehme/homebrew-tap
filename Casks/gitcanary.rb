cask "gitcanary" do
  version "1.5.1"
  sha256 "c087f590c17e6ea98e640dd3591220727fea72e3dc4bd2e3240055fc506cfa34"

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
