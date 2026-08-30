cask "warpforge" do
  version "0.14.0"

  on_macos do
    sha256 "72b3fe7a1066d7bd0c630219c8ab70ddf76ef28b2e088296412b1b55cec01b1d"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "3578e23f33c784b199ff902cc7bdc9107dcaa018116f69d4d52da450d84ee071"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge__amd64.AppImage"
  end

  name "Warpforge"
  desc "Workspace orchestrator with embedded agent terminals"
  homepage "https://github.com/warpforgehq/warpforge"

  livecheck do
    url :stable
    strategy :github_latest
  end

  auto_updates true
  app "Warpforge.app" if OS.mac?
  binary "Warpforge_\#{version}_amd64.AppImage", target: "warpforge" if OS.linux?
end
