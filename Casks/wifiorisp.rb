cask "wifiorisp" do
  version "1.2.0"
  sha256 "2f82e4059adc4c0986e0d61a4cddd4fb5643dfd7abf49a84d6d0b97140a45d40"

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
