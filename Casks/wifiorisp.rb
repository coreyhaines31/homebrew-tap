cask "wifiorisp" do
  version "1.3.0"
  sha256 "ec49015d82dd3341ca41d7e18d15be5fa694cbb37bb14f792f9cd7a3e51bc9a9"

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
