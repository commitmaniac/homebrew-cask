cask "ticktick" do
  version "6.3.20,419"
  sha256 "c4cbce948069a226fe001686b7d596dc89c1fe65acbd7141cef82b2b22bf1c84"

  url "https://ticktick-download-mac.s3.amazonaws.com/download/mac/TickTick_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "ticktick-download-mac.s3.amazonaws.com/download/mac/"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/home"

  livecheck do
    url "https://pull.ticktick.com/mac/release_note/mac_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "TickTick.app"

  zap trash: [
    "~/Library/Application Scripts/com.TickTick.task.mac.*",
    "~/Library/Application Support/com.TickTick.task.mac",
    "~/Library/Caches/com.TickTick.task.mac",
    "~/Library/Caches/TickTick",
    "~/Library/Containers/com.TickTick.task.mac.*",
    "~/Library/Group Containers/75TY9UT8AY.com.TickTick.task.mac",
    "~/Library/Preferences/com.TickTick.task.mac.plist",
    "~/Library/Saved Application State/com.TickTick.task.mac.savedState",
  ]
end
