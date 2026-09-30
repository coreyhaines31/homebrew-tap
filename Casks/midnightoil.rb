cask "midnightoil" do
  version "1.1.0"
  sha256 "dac50d53400c8ded574c1f8600446d5c6c671113a67cd9d1376ca7713cd9bb9f"

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
