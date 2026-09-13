class Yett < Formula
  desc "Deliver secrets to a process environment from committed SOPS files"
  homepage "https://github.com/warpforgehq/yett"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.0/yett-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "20fd5800b9c68ef56ca5680994f7bf45798e18e9e5730e087911a3aa3ada2e78"
    end
    on_intel do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.0/yett-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f384fdd4f709de5a305acabc9a379a1607b4ff143121539fdaa4b590e64d9426"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.0/yett-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b86f0393f3713a3f5c56ab183534a8f969365b70cf39679b96056f16012cf032"
    end
    on_intel do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.0/yett-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bbfb1ad0a8f8b14383c4250e4e59eb523b80bdf000348424858159c1f871083"
    end
  end

  def install
    bin.install "yett"
  end
end
