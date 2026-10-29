cask "greenroom" do
  version "1.13.2"
  sha256 "3931201d513d8c3cb3aba568b3e817b1ebf208e1223623b3baac5ab44055df28"

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
