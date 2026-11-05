cask "drip" do
  version :latest
  sha256 :no_check

  # Always tracks the newest release via GitHub's stable latest-download URL, so
  # the cask never needs a per-release version/sha256 bump. Requires each release
  # to publish a version-LESS `dripos_universal.dmg` asset (release.sh does this).
  # Trade-off: no version pinning + no checksum verification (acceptable for this
  # private tap; `brew info` shows "latest" and upgrades always re-download).
  url "https://github.com/DripYCx26/drip-releases/releases/latest/download/dripos_universal.dmg",
      verified: "github.com/DripYCx26/"
  name "dreach"
  desc "Local-first customer intelligence for inbound revenue"
  homepage "https://dreach.ai/"

  livecheck do
    skip "version :latest tracks the newest release directly via releases/latest/download."
  end

  depends_on macos: :monterey

  app "drip.app"

  zap trash: [
    "~/Library/Application Support/dev.drippay.app",
    "~/Library/Caches/dev.drippay.app",
    "~/Library/Preferences/dev.drippay.app.plist",
  ]
end
