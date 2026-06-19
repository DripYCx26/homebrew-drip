class DripCli < Formula
  desc "Local autopilot daemon for customer intelligence"
  homepage "https://drippay.dev"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/drip-cli-darwin-arm64"
      sha256 "60d392aead5411dadf3a9504d1f47930770ab44393e3e209ae455f4c56c60d5d"
    end
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/drip-cli-darwin-x64"
      sha256 "46a9ea95e65e54b49d7482b018635bc38c19df3e365cf2630639674ead764bc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v#{version}/drip-cli-linux-x64"
      sha256 "6e6924fb8a69e19ee5b60c79000acbe5062621aedc568d22134857b6ddd623c3"
    end
  end

  def install
    bin.install Dir["drip-cli-*"].first => "drip-cli"
  end

  test do
    system "#{bin}/drip-cli", "--help"
  end
end
