cask "killcord" do
  version "0.2.0"
  sha256 "e21915b2c4ee822ba838fee372f76964f3c377578b5218c1a2f388175e4efca5"

  url "https://github.com/coreyhaines31/killcord/releases/download/v#{version}/KillCord-#{version}.dmg"
  name "Kill Cord"
  desc "Menu bar view of API spend across providers, with a native spend caps audit"
  homepage "https://github.com/coreyhaines31/killcord"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Kill Cord.app"

  # Keys live in the login Keychain. They aren't removed here, because `brew upgrade` runs uninstall too;
  # the README's Uninstall section (and Settings › General › Remove All) removes them.
  zap trash: [
    "~/Library/Application Support/Kill Cord",
    "~/Library/Preferences/app.killcord.KillCord.plist",
  ]
end
