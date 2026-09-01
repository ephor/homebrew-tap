cask "warpforge" do
  version "0.15.0"

  on_macos do
    sha256 "1598d503f621e656c51fc5ca7afb6c72384c7de8015a2291cf7e4fdf52a68559"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "64d88a2ab7405145ba658e89d2212fd85b8425ed6b2f6f563863f8fe4a4971b1"
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
