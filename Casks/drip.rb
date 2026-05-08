cask "drip" do
  version "0.1.3"
  sha256 "2c5592fd5f436278e0b0501f08805473c835005e8dffaeff5884e2bfb9f72af8"

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
