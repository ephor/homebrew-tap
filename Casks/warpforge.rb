cask "warpforge" do
  version "0.7.0"
  sha256 "e509c4a55d0720dd48a2ce3e9316613adf3c05b3686d789066f5b7e6b945659f"

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
