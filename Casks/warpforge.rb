cask "warpforge" do
  version "0.10.2"
  sha256 "1fd80752b55c0106602e573d37a60c21fc033c218a0f1f88f813b641c3656789"

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
