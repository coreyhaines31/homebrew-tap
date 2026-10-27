cask "fuelgauge" do
  version "1.4.1"
  sha256 "7f78437cfd3a6cad0de1a30844b5ea07521e6cdd36c4f9615806031819947990"

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
