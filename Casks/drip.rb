cask "drip" do
  version "0.1.15"
  sha256 "b0ffd6db75cc05e6b5a33dd0572117f17212c5db4b22f068568021a8a4d4be7c"

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
