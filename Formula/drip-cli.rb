class DripCli < Formula
  desc "Local autopilot daemon for customer intelligence"
  homepage "https://drippay.dev"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.21/drip-cli-darwin-arm64"
      sha256 "e10d6f71a70792cea139ab1267822fbaab9585e09cb64e6d722d213a1dc1e1d6"
    end
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.21/drip-cli-darwin-x64"
      sha256 "fe6a03f9d75327edfb772e9eaf215d69e1f10569164f74853a993328afc8cdd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DripYCx26/drip-releases/releases/download/v0.1.21/drip-cli-linux-x64"
      sha256 "f3fa9073d0b195cc285fd1d7c552fd0bc6ff29fb0a1013050d21586c07076244"
    end
  end

  def install
    bin.install Dir["drip-cli-*"].first => "drip-cli"
  end

  test do
    system "#{bin}/drip-cli", "--help"
  end
end
