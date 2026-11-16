cask "coatcheck" do
  version "0.2.0"
  sha256 "e86dad27508601cdce4a027cf320e1ad0f86bcf0748d162e2afd69df19f258d5"

  url "https://github.com/coreyhaines31/coatcheck/releases/download/v#{version}/CoatCheck-#{version}-arm64.dmg"
  name "Coat Check"
  desc "Menu bar manager that opens the icons the notch hides"
  homepage "https://coatcheckformac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CoatCheck.app"
  binary "#{appdir}/CoatCheck.app/Contents/MacOS/coatcheck-cli", target: "coatcheck"

  zap trash: [
    "~/Library/Caches/com.coatcheckformac.CoatCheck",
    "~/Library/HTTPStorages/com.coatcheckformac.CoatCheck",
    "~/Library/Preferences/com.coatcheckformac.CoatCheck.plist",
  ]
end
