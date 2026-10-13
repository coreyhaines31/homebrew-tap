cask "spare" do
  version "0.14.0"
  sha256 "203b3a494b2c290317b50e65040f6d4d3caaee6978d2913627e81123dad54470"

  url "https://github.com/coreyhaines31/spare/releases/download/v#{version}/Spare-#{version}-arm64.dmg"
  name "Spare"
  desc "Menu bar monitor showing CPU and memory use by app, project, and AI agent"
  homepage "https://spareformac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Spare.app"
  binary "#{appdir}/Spare.app/Contents/MacOS/spare-cli", target: "spare"

  zap trash: [
    "~/Library/Application Support/Spare",
    "~/Library/Caches/com.spareformac.Spare",
    "~/Library/HTTPStorages/com.spareformac.Spare",
    "~/Library/Preferences/com.spareformac.Spare.plist",
  ]
end
