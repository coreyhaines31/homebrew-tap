cask "killcord" do
  version "0.1.1"
  sha256 "24e10097faaea3604f42473b1f509674cea6ba0d1d67a63d0a2dc94a9237e576"

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
