cask "wifiorisp" do
  version "1.4.0"
  sha256 "6f1c97caf1579b5702d7423d9902c189268871c282d0f712fc73935480ddc4ac"

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
