cask "gitcanary" do
  version "1.4.0"
  sha256 "95043c21408deaf0c2b7cc998d2f6c34425ffbbf83959ec173ddba462d2274ba"

  url "https://github.com/jordiboehme/GitCanary/releases/download/v#{version}/GitCanary-#{version}.dmg"
  name "GitCanary"
  desc "macOS menu bar app that monitors git repos and provides AI-generated summaries of remote changes"
  homepage "https://github.com/jordiboehme/GitCanary"

  depends_on macos: ">= :sonoma"

  app "GitCanary.app"

  postflight do
    system_command "/usr/bin/open",
                   args: ["-g", "#{appdir}/GitCanary.app"]
  end

  uninstall quit: "com.jordiboehme.GitCanary"

  zap trash: [
    "~/Library/Preferences/com.jordiboehme.GitCanary.plist",
  ]
end
