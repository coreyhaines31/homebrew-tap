cask "fuelgauge" do
  version "1.6.1"
  sha256 "67150459907eec1f053ecb475f2ce108d20f1fc1871af19cde5740757c2d74d0"

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
