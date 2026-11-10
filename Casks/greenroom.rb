cask "greenroom" do
  version "1.14.0"
  sha256 "dcbe2b39fa6a9b304c04aefbb5cd8a5ccc71294c379032e24052037751d22ed0"

  url "https://github.com/coreyhaines31/greenroom/releases/download/v#{version}/GreenRoom-#{version}.dmg"
  name "Green Room"
  desc "Menu bar app to check your camera, mic, and speakers before calls"
  homepage "https://greenroomformac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Green Room.app"
  binary "#{appdir}/Green Room.app/Contents/MacOS/greenroom"

  zap trash: [
    "~/Library/Application Support/Green Room",
    "~/Library/Preferences/com.greenroomformac.GreenRoom.plist",
  ]
end
