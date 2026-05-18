cask "drip" do
  version "0.1.18"
  sha256 "c6a4070883c8a9c77bb86ad4e2b0ed2aeecd0672209c9347f6962eff52010a27"

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
