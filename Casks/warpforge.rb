cask "warpforge" do
  version "0.18.0"

  on_macos do
    sha256 "0e3e5ad692ceee172d7e149863296ce9891ce1055eeb371e4480c891b44309da"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "ced0be43e343205e6976f4ed4a9c51c71fdf605d17ac7511120754c43ca5ca2f"
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
