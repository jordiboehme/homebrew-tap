cask "gitcanary" do
  version "1.2.1"
  sha256 "64a4fc2172d6fc6c4575963ec47ae4099726f07a2e280857baf98e6f0cf4c8e4"

  url "https://github.com/jordiboehme/GitCanary/releases/download/v#{version}/GitCanary-#{version}.dmg"
  name "GitCanary"
  desc "macOS menu bar app that monitors git repos and provides AI-generated summaries of remote changes"
  homepage "https://github.com/jordiboehme/GitCanary"

  depends_on macos: ">= :sonoma"

  app "GitCanary.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-gj", "#{appdir}/GitCanary.app"]
  end

  uninstall quit: "com.jordiboehme.GitCanary"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.GitCanary.plist",
  ]
end
