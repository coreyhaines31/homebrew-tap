cask "killcord" do
  version "0.4.2"
  sha256 "6d72a2f188d50d56f6e8ac79b87b6925d44977bade83f39750cbd18b2cdeafb9"

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
