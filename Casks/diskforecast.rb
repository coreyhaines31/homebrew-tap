cask "diskforecast" do
  version "1.5.0"
  sha256 "a74310e24b32a8880d2ed9d4a31f6f111445a5424da6d6d630a0a9f9d3b26d02"

  url "https://github.com/coreyhaines31/diskforecast/releases/download/v#{version}/DiskForecast-#{version}.dmg"
  name "Disk Forecast"
  desc "Menu bar disk space forecast that explains System Data and reclaims space safely"
  homepage "https://diskforecast.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Disk Forecast.app"
  binary "#{appdir}/Disk Forecast.app/Contents/MacOS/diskforecast"

  zap trash: [
    "~/Library/Application Support/Disk Forecast",
    "~/Library/Preferences/app.diskforecast.DiskForecast.plist",
  ]
end
