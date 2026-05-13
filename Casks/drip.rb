cask "drip" do
  version "0.1.11"
  sha256 "6e0e19448f967106c0d31acb6dc3ea87f8205a2dbfc388ac04af389c882f2f27"

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
