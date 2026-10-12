cask "spare" do
  version "0.13.0"
  sha256 "6e505025fc9fed6bf08f391131bab6c24e134cd7964f707b45971ab2379709e0"

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

  zap trash: [
    "~/Library/Application Support/Spare",
    "~/Library/Caches/com.spareformac.Spare",
    "~/Library/HTTPStorages/com.spareformac.Spare",
    "~/Library/Preferences/com.spareformac.Spare.plist",
  ]
end
