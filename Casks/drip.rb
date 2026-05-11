cask "drip" do
  version "0.1.8"
  sha256 "8bd306be63a6eff0934696c1d7c155ea2f597977c832817ee213bebad77c7582"

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
