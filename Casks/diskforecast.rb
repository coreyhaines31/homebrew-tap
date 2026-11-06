cask "diskforecast" do
  version "1.7.4"
  sha256 "5915cf3c4331a980af8050ca6e1cca9b135c779b78bc979d7bd47ea5ed22621b"

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
