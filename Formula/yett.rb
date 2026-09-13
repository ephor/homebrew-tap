class Yett < Formula
  desc "Deliver secrets to a process environment from committed SOPS files"
  homepage "https://github.com/warpforgehq/yett"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.2/yett-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "5eaa3f6db856b3745ac00f8aaeaf3683d8ebe9c755287e817314ddb444086965"
    end
    on_intel do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.2/yett-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "32dda77425e68b41fc9fb9ef48f1c84fa38b6afd92d7eb251f63f26518797d62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.2/yett-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49a64c1428b52ae3b0c92cfab022f497ecc0b982a5eb111e211fcc160d5cbe7b"
    end
    on_intel do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.2/yett-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43915cf39c15654422166cba0c5f6b75b0cceba39b961eba56ca85a812ba1734"
    end
  end

  def install
    bin.install "yett"
  end
end
