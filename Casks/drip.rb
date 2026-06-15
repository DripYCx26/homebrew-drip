cask "drip" do
  version "0.1.49"
  sha256 "aef397bb05208f2e3c89076d1f945ba16dea1f70c3c4cddd74c0d9fc28151cc7"

  url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/dripos_#{version}_universal.dmg",
      verified: "github.com/DripYCx26/"
  name "dripos"
  desc "Local-first customer intelligence for inbound revenue"
  homepage "https://drippay.dev/"

  livecheck do
    skip "Release train returned to the 0.1.x app version line after v1.2.x mis-tags."
  end

  depends_on macos: :monterey

  app "dripos.app"

  zap trash: [
    "~/Library/Application Support/dev.drippay.app",
    "~/Library/Caches/dev.drippay.app",
    "~/Library/Preferences/dev.drippay.app.plist",
  ]
end
