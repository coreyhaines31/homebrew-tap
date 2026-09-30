cask "midnightoil" do
  version "1.0.0"
  sha256 "36bdc449ddcbcbe4dcef4798ddc19558ef235deee988e9a02fc286be43696136"

  url "https://github.com/coreyhaines31/midnightoil/releases/download/v#{version}/MidnightOil-#{version}.dmg"
  name "Midnight Oil"
  desc "Keep your Mac awake so AI agents, renders, and downloads can finish"
  homepage "https://midnightoil.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Midnight Oil.app"

  zap trash: [
    "~/Library/Application Support/Midnight Oil",
    "~/Library/Preferences/app.midnightoil.MidnightOil.plist",
  ]
end
