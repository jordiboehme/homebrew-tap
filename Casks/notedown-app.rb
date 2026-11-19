cask "notedown-app" do
  version "0.2.1"
  sha256 "82ed48f4e1e265fdecbfbc8a6165e1aa77e44df98a9ad7936bd4a730053394d2"

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
