class Wf < Formula
  desc "Workspace orchestrator with TUI and desktop interfaces"
  homepage "https://github.com/ephor/warpforge"
  version "0.6.8"
  url "https://github.com/ephor/warpforge/releases/download/v#{version}/warpforge-aarch64-apple-darwin.tar.gz"
  sha256 "f137c9d5b30bc523af4d6d7a88677b7071acb248a32e6fd064c9554a30a51743"

  def install
    bin.install "warpforge" => "wf"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
