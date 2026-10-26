cask "ponchik-bridge" do
  version "1.0.1"
  sha256 "d49562d2ef0ed5922231bf89cab96c1784111ab483f534c3f02ad5848977da05"

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
