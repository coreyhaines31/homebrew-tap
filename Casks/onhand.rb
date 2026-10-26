cask "onhand" do
  version "1.5.1"
  sha256 "76eda99604f2839741f737697aa7aced47775377865df4afba928469a8697b10"

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
