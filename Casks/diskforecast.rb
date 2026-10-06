cask "diskforecast" do
  version "1.0.0"
  sha256 "6220c98c6d6fa32774ba18306c7c86174dedcfb73fefe8a3b259e082411301a4"

  url "https://github.com/coreyhaines31/diskforecast/releases/download/v#{version}/DiskForecast-#{version}.dmg"
  name "Disk Forecast"
  desc "Menu bar disk space forecast that explains System Data and reclaims space safely"
  homepage "https://diskforecast.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Disk Forecast.app"

  zap trash: [
    "~/Library/Application Support/Disk Forecast",
    "~/Library/Preferences/app.diskforecast.DiskForecast.plist",
  ]
end
