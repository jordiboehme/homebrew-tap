cask "gitcanary" do
  version "1.6.0"
  sha256 "f3336f03faef3e77657370fd5f5758de8c1877cfc1df295f706878887fa24017"

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
