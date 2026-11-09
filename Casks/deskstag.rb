cask "deskstag" do
  version "1.0.8"
  sha256 "3dec4fadc853dcf92986813037ffcadb50a5e127156761ef82949a5d1b138b4b"

  url "https://deskstag.com/DeskStag-#{version}.dmg"
  name "DeskStag"
  desc "Name and colour-code your desktops inside Mission Control"
  homepage "https://deskstag.com/"

  livecheck do
    url "https://deskstag.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "DeskStag.app"

  zap trash: "~/Library/Preferences/com.deskstag.app.plist"
end
