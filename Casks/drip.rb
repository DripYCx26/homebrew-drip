cask "drip" do
  version "0.1.22"
  sha256 "7dd880597b71908f05d507d3c6756a9900577a7ef7d1dfc05cad76a04d04172f"

  url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/dripos_#{version}_universal.dmg",
      verified: "github.com/DripYCx26/"
  name "dripos"
  desc "Local-first customer intelligence for inbound revenue"
  homepage "https://drippay.dev/"

  app "dripos.app"

  zap trash: [
    "~/Library/Application Support/dev.drippay.app",
    "~/Library/Caches/dev.drippay.app",
    "~/Library/Preferences/dev.drippay.app.plist",
  ]
end
