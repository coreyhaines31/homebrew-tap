cask "wifiorisp" do
  version "1.0.1"
  sha256 "519de770f130ab080d2ae09ea84b933ac887ce8831bd8711fe27c7b2a5d197b9"

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
