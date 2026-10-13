cask "diskforecast" do
  version "1.3.1"
  sha256 "278ee1ea1a4cf36fe71d1c2913dac9278dddff25117b1a32ab104f81ab2f22f1"

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
