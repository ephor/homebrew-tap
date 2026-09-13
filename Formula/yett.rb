class Yett < Formula
  desc "Deliver secrets to a process environment from committed SOPS files"
  homepage "https://github.com/warpforgehq/yett"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.1/yett-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "7d0c0371f60d51a3dd3cdb695e9d374e05765af1c15afdf184e3f981ed155471"
    end
    on_intel do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.1/yett-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "1fd496031b9b656de1b283834424c6f3b536cf53fec68ca5a50bc1114eb39985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.1/yett-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72aa5462046d6cdec0d229861ad24aea672753618c4def858854cb726858fa0f"
    end
    on_intel do
      url "https://github.com/warpforgehq/yett/releases/download/v0.1.1/yett-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de4c8206821d5c6534465122e27b03ce0eb53412d75bb908ed33fe5b2226766c"
    end
  end

  def install
    bin.install "yett"
  end
end
