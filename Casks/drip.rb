cask "drip" do
  version "0.1.51"
  sha256 "9353b979233df025fc28ee1dc4d880d1606198efc32ed801bea231518e929267"

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
