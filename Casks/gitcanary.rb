cask "gitcanary" do
  version "1.2.2"
  sha256 "5dcf7b8725d84fcaecf867574945fd12853082d0cf47f66d1074a6ad35a80d31"

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
