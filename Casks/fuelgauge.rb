cask "fuelgauge" do
  version "1.0.1"
  sha256 "124ca89312b139fb9f79cd48bc1e79f62214aa87785661be12abced5fc24b6dc"

  url "https://github.com/coreyhaines31/fuelgauge/releases/download/v#{version}/FuelGauge-#{version}.dmg"
  name "Fuel Gauge"
  desc "Menu bar forecast of when you'll hit your Claude Code, Codex, and Grok Bot limits"
  homepage "https://fuelgauge.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Fuel Gauge.app"
  binary "#{appdir}/Fuel Gauge.app/Contents/MacOS/fuelgauge"

  zap trash: [
    "~/Library/Application Support/Fuel Gauge",
    "~/Library/Preferences/app.fuelgauge.FuelGauge.plist",
  ]
end
