cask "fuelgauge" do
  version "1.10.0"
  sha256 "9fa86f175e0f752000134642ceb9e1a28a92daec0f34cea9e6002c5179ed0e40"

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
