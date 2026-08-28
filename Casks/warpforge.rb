cask "warpforge" do
  version "0.12.1"

  on_macos do
    sha256 "fecb3ee7e6b941da09bfd7846b23ae6323b57b563dfc100256bc9cabd171431c"
    url "https://github.com/warpforgehq/warpforge/releases/download/v#{version}/Warpforge_#{version}_aarch64.dmg"
  end
  on_linux do
    sha256 "22be326cf4c85c94f2f28b133d093dfc7cad48419bac46ba024866fafdb5e8d7"
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
