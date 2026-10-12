cask "onhand" do
  version "1.2.0"
  sha256 "46422ec4daf3b9629e1d9b7adfcbd505bf3603930f44493499dd1f72b6f945bb"

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

  zap trash: [
    "~/Library/Application Support/OnHand",
    "~/Library/Preferences/com.onhandformac.OnHand.plist",
  ]
end
