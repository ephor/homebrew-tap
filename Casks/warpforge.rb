cask "warpforge" do
  version "0.13.0"

  on_macos do
    sha256 "ffc7e18ca34ad19955dea0bce55985825c49cc5c8d5b6cc2713f13619672ba39"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "de5a10345352a58a27c206541f33c89bff5055aad583c31c169cb0e962f71730"
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
