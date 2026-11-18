cask "killcord" do
  version "0.1.3"
  sha256 "f4a3271dc0bfb0a53ff8ac13259b6987262fd12a9d5b5397ce694c314a3ce084"

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
