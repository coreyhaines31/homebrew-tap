cask "greenroom" do
  version "1.4.0"
  sha256 "2368208ea34b4a5615c186ccd8ad056824e4a180f00e96177fa334433eb6efab"

  url "https://github.com/coreyhaines31/greenroom/releases/download/v#{version}/GreenRoom-#{version}.dmg"
  name "Green Room"
  desc "Menu bar app to check your camera, mic, and speakers before calls"
  homepage "https://greenroomformac.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Green Room.app"
  binary "#{appdir}/Green Room.app/Contents/MacOS/greenroom"

  zap trash: [
    "~/Library/Application Support/Green Room",
    "~/Library/Preferences/com.greenroomformac.GreenRoom.plist",
  ]
end
