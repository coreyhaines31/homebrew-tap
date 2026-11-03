cask "midnightoil" do
  version "1.6.0"
  sha256 "656e77490ff1913bb1b5a7c3169a0df6354777c4a181fc4d1a32b18a3bae7154"

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
  binary "#{appdir}/Midnight Oil.app/Contents/MacOS/midnightoil"

  zap trash: [
    "~/Library/Application Support/Midnight Oil",
    "~/Library/Preferences/app.midnightoil.MidnightOil.plist",
  ]
end
