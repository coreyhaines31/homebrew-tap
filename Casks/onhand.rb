cask "onhand" do
  version "1.5.0"
  sha256 "131a65ba5ea9520b20165ede0c92dbac4fd9dab8238f9afac7c8e7b84ac4dfaf"

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
