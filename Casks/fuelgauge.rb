cask "fuelgauge" do
  version "1.4.0"
  sha256 "6c508025ac5fe95ee1d6fbd108ea31f9070f3da55ac2047a87e046d1358d338e"

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
