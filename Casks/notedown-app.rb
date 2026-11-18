cask "notedown-app" do
  version "0.1.0"
  sha256 "0e6bc2a0d54b2913d4c6a51b37ffd8c66b514e22aa0ccb6a15160e375cf1df8b"

  url "https://github.com/jordiboehme/notedown/releases/download/v#{version}/notedown-app-v#{version}-macos.dmg"
  name "Notedown"
  desc "Menu bar app that turns Supernote handwritten notes into Markdown"
  homepage "https://github.com/jordiboehme/notedown"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Notedown.app"

  uninstall launchctl: "Notedown",
            quit:      "io.github.jordiboehme.notedown"

  zap trash: [
    "~/Library/Application Support/io.github.jordiboehme.notedown",
    "~/Library/Caches/io.github.jordiboehme.notedown",
    "~/Library/HTTPStorages/io.github.jordiboehme.notedown",
    "~/Library/LaunchAgents/Notedown.plist",
    "~/Library/Preferences/io.github.jordiboehme.notedown.plist",
    "~/Library/Saved Application State/io.github.jordiboehme.notedown.savedState",
    "~/Library/WebKit/io.github.jordiboehme.notedown",
  ]
end
