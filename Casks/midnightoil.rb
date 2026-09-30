cask "midnightoil" do
  version "1.0.1"
  sha256 "20d672fb9cd70f0cfd4d08f17d7cdb4c964e8a7110ebf1b8beeb19a623bca574"

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
