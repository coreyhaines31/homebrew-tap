cask "onhand" do
  version "1.4.0"
  sha256 "bdad18f98d2fc86c0643733bf50600a09af2416d8bd67ef3569ab8f691135a9d"

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
