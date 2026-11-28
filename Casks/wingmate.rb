cask "wingmate" do
  version :latest
  sha256 :no_check

  url "https://github.com/Kera77/Wingmate/releases/latest/download/Wingmate.dmg"
  name "Wingmate"
  desc "Notch utilities: calendar, notifications, notes, Claude and more"
  homepage "https://github.com/Kera77/Wingmate"

  depends_on macos: :sonoma

  app "Wingmate.app"

  # Wingmate is signed with its own certificate, not by Apple: without this Gatekeeper refuses
  # the first launch. The app checks the signature of its own updates.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Wingmate.app"],
        writable_paths: ["Wingmate.app"],
        writable_base:  :appdir
  end

  uninstall quit: "com.peterkereki.Wingmate"

  zap trash: [
    "~/Library/Application Support/Wingmate",
    "~/Library/Logs/Wingmate",
    "~/Library/Preferences/com.peterkereki.Wingmate.plist",
  ]
end
