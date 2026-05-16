cask "drip" do
  version "0.1.13"
  sha256 "39fb18173bd7c54d1173a7c1d8eb746b860f33a9689eb8d229da75d160b5c129"

  url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/dripos_#{version}_universal.dmg",
      verified: "github.com/DripYCx26/"
  name "dripos"
  desc "Local-first customer intelligence: Stripe + Slack + Gmail by customer"
  homepage "https://drippay.dev/"

  app "dripos.app"

  zap trash: [
    "~/Library/Application Support/dev.drippay.app",
    "~/Library/Caches/dev.drippay.app",
    "~/Library/Preferences/dev.drippay.app.plist",
  ]
end
