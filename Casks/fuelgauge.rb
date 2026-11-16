cask "fuelgauge" do
  version "1.11.0"
  sha256 "5604ba1775aae6101e9cbc92a793882bd30c6444f6dce2ddb02a0b068f1d60fd"

  url "https://github.com/coreyhaines31/fuelgauge/releases/download/v#{version}/FuelGauge-#{version}.dmg"
  name "Fuel Gauge"
  desc "AI coding usage, cost, and limit forecasts in the menu bar"
  homepage "https://fuelgauge.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fuel Gauge.app"
  binary "#{appdir}/Fuel Gauge.app/Contents/MacOS/fuelgauge"

  zap trash: [
    "~/Library/Application Support/Fuel Gauge",
    "~/Library/Preferences/app.fuelgauge.FuelGauge.plist",
  ]
end
