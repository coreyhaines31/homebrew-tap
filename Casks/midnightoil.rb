cask "midnightoil" do
  version "1.3.0"
  sha256 "fcc69401eb9fac38d7c921bf4ff8a03e675aaee466aa7591371b8ac3a35336cb"

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
