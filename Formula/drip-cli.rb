class DripCli < Formula
  desc "Drip CLI - local autopilot daemon for customer intelligence"
  homepage "https://drippay.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.0/drip-cli-darwin-arm64"
      sha256 "88d0dc510962a6c191e085268355d884471de924f59db74fb548d3f3cb0b6520"
    end
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.0/drip-cli-darwin-x64"
      sha256 "451b3d42a50558340773f6d25d32348dfc31ca311c9a40eddd997a4f56166e66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.0/drip-cli-linux-x64"
      sha256 "cb027d03ee129a12bf8eb4a53093a97b66b9fe5d89ad46fb89ddde89f2c27a95"
    end
  end

  def install
    bin.install Dir["drip-cli-*"].first => "drip"
  end

  test do
    system "#{bin}/drip", "--help"
  end
end
