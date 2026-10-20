cask "greenroom" do
  version "1.11.0"
  sha256 "c9f1216300f41b48db56afb27d78c897a9ffe4d22c4c08283c5c39f772daead4"

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
