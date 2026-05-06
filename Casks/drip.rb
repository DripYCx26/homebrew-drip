cask "drip" do
  version "0.1.0"
  sha256 "e2a4cd037ca062245e259b7f9a931861aa0a50db03233fdba97ce8860236b4a2"

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
