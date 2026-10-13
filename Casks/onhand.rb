cask "onhand" do
  version "1.3.0"
  sha256 "3075cec1f9811ce27c9d41a7369701d4d2ff8f59d3a365eebac44f8bb735fec4"

  url "https://github.com/coreyhaines31/onhand/releases/download/v#{version}/OnHand-#{version}.zip"
  name "On Hand"
  desc "Clipboard history manager that keeps your clips local"
  homepage "https://onhandformac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "On Hand.app"
  binary "#{appdir}/On Hand.app/Contents/MacOS/onhand"

  zap trash: [
    "~/Library/Application Support/OnHand",
    "~/Library/Preferences/com.onhandformac.OnHand.plist",
  ]
end
