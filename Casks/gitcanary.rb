cask "gitcanary" do
  version "1.6.2"
  sha256 "6534fcd8ea6c008ac86a12c4168afb5899fdcde7631d961e66ef8143811e7a48"

  url "https://github.com/jordiboehme/GitCanary/releases/download/v#{version}/GitCanary-#{version}.dmg"
  name "GitCanary"
  desc "macOS menu bar app that monitors git repos and provides AI-generated summaries of remote changes"
  homepage "https://github.com/jordiboehme/GitCanary"

  depends_on macos: :sonoma

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
