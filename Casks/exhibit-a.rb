cask "exhibit-a" do
  version "0.1.0"
  sha256 "b86ce290c0e4dc21897bfc8a11b0ed7cb0baa10285881967ee381bcff5b3ba6e"

  url "https://github.com/coreyhaines31/exhibita/releases/download/v#{version}/ExhibitA-#{version}.dmg"
  name "Exhibit A"
  desc "Menu bar screenshot tool: mark up a capture with single keys, a spoken sentence, or one CLI command"
  homepage "https://exhibitaformac.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Exhibit A.app"
  binary "#{appdir}/Exhibit A.app/Contents/MacOS/exhibit"

  # Captures, the never-capture policy and the bridge socket all live under Application Support.
  zap trash: [
    "~/Library/Application Support/Exhibit A/Bridge",
    "~/Library/Application Support/Exhibit A",
    "~/Library/Preferences/com.exhibitaformac.ExhibitA.plist",
  ]
end
