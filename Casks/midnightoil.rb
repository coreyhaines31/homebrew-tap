cask "midnightoil" do
  version "1.2.0"
  sha256 "914c6a1ab77a1d095b6d81be3ea764e87648f2665bc7dc00c927f81cffc0a8ab"

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
