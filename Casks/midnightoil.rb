cask "midnightoil" do
  version "1.7.0"
  sha256 "69efc7ca323e4763aa61af87aa392b8d80d2c28863da3b51e25ee59abf03ed6c"

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

  # Removing the closed-lid helper mid-session would leave lid-close sleep off, so restore it
  # first if the helper's marker says a session disabled it.
  uninstall early_script: {
              executable: "/bin/sh",
              args:       [
                "-c",
                'm="/Library/Application Support/Midnight Oil/sleep-disabled"; ' \
                '[ -e "$m" ] && /usr/bin/pmset disablesleep 0 && /bin/rm -f "$m"; exit 0',
              ],
              sudo:       true,
            },
            launchctl:    "app.midnightoil.MidnightOil.Helper",
            quit:         "app.midnightoil.MidnightOil",
            rmdir:        "/Library/Application Support/Midnight Oil"

  zap trash: [
    "~/Library/Application Support/Midnight Oil",
    "~/Library/Preferences/app.midnightoil.MidnightOil.plist",
  ]
end
