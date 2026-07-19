cask "lidrun" do
  # LidRun ships a single always-latest DMG (atomic-swapped server-side), so the
  # download URL is not versioned. Homebrew therefore requires `sha256 :no_check`
  # here (a pinned sha would break the instant a new release swaps the file).
  # Integrity is still enforced at launch by macOS Gatekeeper — the DMG is signed
  # with a Developer ID and notarized. `version` tracks the Sparkle appcast
  # (marketing,build) purely for display + livecheck; existing installs update
  # themselves via Sparkle (auto_updates true), so this cask only gates the first
  # `brew install`. Bump `version` on each release with
  # `web/scripts/update-homebrew-cask.mjs` (it reads the live appcast).
  # TODO: if a versioned download URL is added server-side
  # (e.g. https://lidrun.com/download/LidRun-#{version}.dmg serving archived DMGs),
  # switch to a pinned `sha256` and interpolate `#{version}` into `url` — that is
  # also a prerequisite for submitting to the official homebrew/cask repo.
  version "1.1.40,178"
  sha256 :no_check

  url "https://lidrun.com/download/LidRun.dmg"
  name "LidRun"
  desc "Menu bar utility to keep AI and dev jobs running with the lid closed"
  homepage "https://lidrun.com/"

  livecheck do
    url "https://lidrun.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "LidRun.app"

  zap trash: [
    "~/Library/Application Support/LidRun",
    "~/Library/Caches/com.lidrun.app",
    "~/Library/HTTPStorages/com.lidrun.app",
    "~/Library/Preferences/com.lidrun.app.plist",
    "~/Library/Saved Application State/com.lidrun.app.savedState",
  ]

  caveats <<~EOS
    LidRun installs a privileged helper (com.lidrun.app.helper) via SMAppService
    for its closed-lid and safety features. `brew uninstall --zap` removes LidRun's
    user files but cannot remove that system helper — to fully remove it, open the
    app's teardown or System Settings → General → Login Items & Extensions and turn
    off LidRun before uninstalling.
  EOS
end
