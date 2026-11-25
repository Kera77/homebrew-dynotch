cask "dynotch" do
  version :latest
  sha256 :no_check

  url "https://github.com/Kera77/Dynotch/releases/latest/download/Dynotch.dmg"
  name "Wingmate"
  desc "Notch utilities: calendar, notifications, notes, Claude and more"
  homepage "https://github.com/Kera77/Dynotch"

  depends_on macos: :sonoma

  app "Dynotch.app"

  # Dynotch is signed with its own certificate, not by Apple: without this Gatekeeper refuses
  # the first launch. The app checks the signature of its own updates.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Dynotch.app"],
        writable_paths: ["Dynotch.app"],
        writable_base:  :appdir
  end

  uninstall quit: "com.peterkereki.Dynotch"

  zap trash: [
    "~/Library/Application Support/Dynotch",
    "~/Library/Logs/Dynotch",
    "~/Library/Preferences/com.peterkereki.Dynotch.plist",
  ]
end
