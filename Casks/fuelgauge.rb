cask "fuelgauge" do
  version "1.0.0"
  sha256 "07186057f4ec5987c93e098d7e9cd32a109710bc3f3c2b6a7c9e723b4a7b5a1f"

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
