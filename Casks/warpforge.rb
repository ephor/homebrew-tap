cask "warpforge" do
  version "0.9.0"
  sha256 "41a00dd6c33c682149f83eddee853eeb59ef21d13d0df301a4b7187a5178d620"

  url "https://github.com/ephor/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  name "Warpforge"
  desc "Workspace orchestrator with embedded agent terminals"
  homepage "https://github.com/ephor/warpforge"

  livecheck do
    url :stable
    strategy :github_latest
  end

  # Updates are delivered by the built-in Tauri updater; Homebrew only
  # performs the initial install and must not fight the in-app updater.
  auto_updates true

  app "Warpforge.app"
end
