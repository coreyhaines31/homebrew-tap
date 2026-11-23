cask "exhibit-a" do
  version "0.1.5"
  sha256 "fbe2d031d63364d055295340b037138c5c97fcbfca524807f259c14319c5917d"

  url "https://github.com/coreyhaines31/exhibita/releases/download/v#{version}/ExhibitA-#{version}.dmg"
  name "Exhibit A"
  desc "Menu bar screenshot tool: mark up a capture with single keys, a spoken sentence, or one CLI command"
  homepage "https://exhibitaformac.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Exhibit A.app"
  binary "#{appdir}/Exhibit A.app/Contents/MacOS/exhibit"

  # Captures, the never-capture policy and the bridge socket all live under Application Support.
  zap trash: [
    "~/Library/Application Support/Exhibit A/Bridge",
    "~/Library/Application Support/Exhibit A",
    "~/Library/Preferences/com.exhibitaformac.ExhibitA.plist",
  ]
end
