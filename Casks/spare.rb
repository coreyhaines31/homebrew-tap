cask "spare" do
  version "0.14.1"
  sha256 "a0a51ebb98cf9c73d36b32740c4d40e048cff2f1a9ae459388bc74a3e46fac99"

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
