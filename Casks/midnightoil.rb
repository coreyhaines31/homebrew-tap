cask "midnightoil" do
  version "1.5.1"
  sha256 "6186f88f6b2654fb7a0fc2da7b5419efd2e5f8adb364f25c777cca0f1ab090ca"

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
