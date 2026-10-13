cask "diskforecast" do
  version "1.4.0"
  sha256 "812688f85dbb7ecbf8cc65c9ddc5df0a4182f2f0be6c7bdc6675f5c78ead9c42"

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
