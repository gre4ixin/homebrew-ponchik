cask "ponchik-bridge" do
  version "1.0.0"
  sha256 "e65500b791fbf41ddd3dba2541c337da2ff87f8b74b0683805665b5c0de81064"

  url "https://github.com/gre4ixin/homebrew-ponchik/releases/download/v#{version}/PonchikBridge.zip"
  name "Ponchik Bridge"
  desc "Connects the Ponchik iPhone app to the AI agent on this Mac"
  homepage "https://ponchik-app.netlify.app/mac/"

  depends_on macos: :tahoe

  app "PonchikBridge.app"

  uninstall quit: "com.gre4ixin.ponchik.bridge"

  zap trash: [
    "~/Library/Logs/Ponchik Bridge",
    "~/Library/Preferences/com.gre4ixin.ponchik.bridge.plist",
  ]
end
