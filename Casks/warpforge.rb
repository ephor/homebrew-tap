cask "warpforge" do
  version "0.11.1"
  sha256 "d05b89bbb1e538ca585efd5101d71a15b4c0c96de632c561f737937042e1606f"

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
