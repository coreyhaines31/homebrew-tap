cask "wifiorisp" do
  version "1.0.0"
  sha256 "732879ae5a8d3a065c2a0a107789215ac0f1f7a33ca30a8f6fea0bb2da904748"

  url "https://github.com/coreyhaines31/wifiorisp/releases/download/v#{version}/WiFiOrISP-#{version}.dmg"
  name "WiFi or ISP"
  desc "Menu bar app that tells you whether slow internet is your Wi-Fi or your ISP"
  homepage "https://wifiorisp.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "WiFi or ISP.app"

  zap trash: [
    "~/Library/Application Support/WiFi or ISP",
    "~/Library/Preferences/app.wifiorisp.WiFiOrISP.plist",
  ]
end
