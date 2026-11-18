cask "fuelgauge" do
  version "1.12.1"
  sha256 "3af178f3e3c71283832e4dd7e8ac7a96eed061717138525fac71e571bc9b829a"

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
