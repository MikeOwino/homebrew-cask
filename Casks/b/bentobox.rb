cask "bentobox" do
  version "0.8.0"
  sha256 "4adb116fe807562fcd85089027f43687920a746cc3956724886d0f0fe2c7300d"

  url "https://releases.bentobox.friendlyventures.org/#{version}/bentobox-macos-universal.zip",
      verified: "releases.bentobox.friendlyventures.org/"
  name "BentoBox"
  desc "Window manager that organizes desktop applications into predefined zones"
  homepage "https://bentoboxapp.com/"

  livecheck do
    url "https://releases.bentobox.friendlyventures.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "BentoBox.app"

  zap trash: [
    "~/Library/Application Support/org.friendlyventures.BentoBox",
    "~/Library/Caches/org.friendlyventures.BentoBox",
    "~/Library/HTTPStorages/org.friendlyventures.BentoBox",
    "~/Library/Preferences/org.friendlyventures.BentoBox.plist",
    "~/Library/Saved Application State/org.friendlyventures.BentoBox.savedState",
    "~/Library/WebKit/org.friendlyventures.BentoBox",
  ]
end
