cask "ponchik-bridge" do
  version "1.0.2"
  sha256 "d21cbaa8f832757bfa03220010509330129f3123537ee4eae6092fb13bde5006"

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
