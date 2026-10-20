cask "fuelgauge" do
  version "1.3.1"
  sha256 "e06036e3b5d699e8a8aeb56e00cd08f074855d5a09bf22cfae6ddbc71218869c"

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
