cask "wifiorisp" do
  version "1.2.1"
  sha256 "5e9b21d2eac83edef12108a38f8ce7fba31e5fcad9088f3cdd18703bd4b3071a"

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
