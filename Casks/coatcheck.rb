cask "coatcheck" do
  version "0.1.2"
  sha256 "53b34995aa8f95c7cb71d79853f9a5301f66d3ecbaad333edf72b29d44407587"

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
