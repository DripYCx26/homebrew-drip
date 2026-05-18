class DripCli < Formula
  desc "Local autopilot daemon for customer intelligence"
  homepage "https://drippay.dev"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.18/drip-cli-darwin-arm64"
      sha256 "452479621a1511a0d045df5f6a36a395366bb920c99b61871878cdc1bbecf6a9"
    end
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.18/drip-cli-darwin-x64"
      sha256 "f51abba1c8e4a84a229fee2bbf8f9f7f4b224eed4aa12d990e69e2385511db47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.18/drip-cli-linux-x64"
      sha256 "e6ebbdfb6bdaf70e9c22ab9817788897ec7bf7c0ffe41768c75fad53b46a3f78"
    end
  end

  def install
    bin.install Dir["drip-cli-*"].first => "drip-cli"
  end

  test do
    system "#{bin}/drip-cli", "--help"
  end
end
