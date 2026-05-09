cask "drip" do
  version "0.1.4"
  sha256 "513e8536c562913b6d20e1b86938b6ba90ef30986d6b5a9a670fbf75ce5c3d3f"

  url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/Drip-v#{version}-aarch64.dmg"
  name "Drip"
  desc "Local-first customer intelligence: Stripe + Slack + Gmail by customer"
  homepage "https://drippay.dev"

  app "Drip.app"

  zap trash: [
    "~/Library/Application Support/dev.drippay.app",
    "~/Library/Caches/dev.drippay.app",
    "~/Library/Preferences/dev.drippay.app.plist",
  ]
end
