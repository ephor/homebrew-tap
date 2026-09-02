cask "warpforge" do
  version "0.16.0"

  on_macos do
    sha256 "030b5e3a4aacb1888fe54cff2e3bda3123ce04ad283bdcce535bddfdc3cb2c04"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "780b5c489cc49c63a35fd6693872352544faae66db10da12e20d89bf2bb6bdbd"
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
