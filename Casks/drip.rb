cask "drip" do
  version "0.1.7"
  sha256 "a919cdc3e2a9c87ffd09efa0764f2e68b440a9d8c1bdafdea122fae6ba05eb18"

  url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/memra_#{version}_universal.dmg",
      verified: "github.com/DripYCx26/"
  name "memra"
  desc "Local-first customer intelligence: Stripe + Slack + Gmail by customer"
  homepage "https://drippay.dev/"

  app "memra.app"

  zap trash: [
    "~/Library/Application Support/dev.drippay.app",
    "~/Library/Caches/dev.drippay.app",
    "~/Library/Preferences/dev.drippay.app.plist",
  ]
end
