cask "diskforecast" do
  version "1.3.0"
  sha256 "6cd364087e67430ed5e3fad4d4863292e51e4e1979cde9495194213908a05145"

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
