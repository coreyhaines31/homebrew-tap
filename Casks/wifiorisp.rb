cask "wifiorisp" do
  version "1.3.1"
  sha256 "e263e1505f791f67fbd4e06ce218e26234544b245810d3b7780b5c4d2be15eb8"

  url "https://github.com/coreyhaines31/wifiorisp/releases/download/v#{version}/WiFiOrISP-#{version}.dmg"
  name "WiFi or ISP"
  desc "Menu bar app that tells you whether slow internet is your Wi-Fi or your ISP"
  homepage "https://wifiorisp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "WiFi or ISP.app"
  binary "#{appdir}/WiFi or ISP.app/Contents/MacOS/wifiorisp"

  zap trash: [
    "~/Library/Application Support/WiFi or ISP",
    "~/Library/Preferences/app.wifiorisp.WiFiOrISP.plist",
  ]
end
