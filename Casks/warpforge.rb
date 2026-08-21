cask "warpforge" do
  version "0.6.8"
  sha256 "ac14adefe9b30dfabd0a451d319dbf3d36afb8459441e6610412a7e17aac36d6"

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
