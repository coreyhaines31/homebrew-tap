cask "fuelgauge" do
  version "1.9.0"
  sha256 "9e3506605e58ad9d7005abdab9f1493640aefe7e53d8279dfc5f02aa908982e1"

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
