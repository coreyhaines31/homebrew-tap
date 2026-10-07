cask "midnightoil" do
  version "1.4.0"
  sha256 "6dbce11c92d409c1540de672266c29a87901678b9aef6a6f32a1ba229f0c97b3"

  url "https://github.com/coreyhaines31/midnightoil/releases/download/v#{version}/MidnightOil-#{version}.dmg"
  name "Midnight Oil"
  desc "Keeps the computer awake so AI agents, renders, and downloads can finish"
  homepage "https://midnightoil.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Midnight Oil.app"

  zap trash: [
    "~/Library/Application Support/Midnight Oil",
    "~/Library/Preferences/app.midnightoil.MidnightOil.plist",
  ]
end
