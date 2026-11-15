class Rezzer < Formula
  desc "Turns files into knowledge for AI agents"
  homepage "https://github.com/jordiboehme/rezzer"
  license "MPL-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/rezzer/releases/download/v#{version}/rezzer-v#{version}-macos-arm64.tar.gz"
      sha256 "d51f296e812e114042c8be9c6c59b6edfc65cd235cc912f48ddb644fdbbe9e50"
    end

    on_intel do
      url "https://github.com/jordiboehme/rezzer/releases/download/v#{version}/rezzer-v#{version}-macos-intel.tar.gz"
      sha256 "06209b0e79e90413ef29c751faf21e8fbf74715675cbbcfdd1330f325778298a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/rezzer/releases/download/v#{version}/rezzer-v#{version}-linux-arm64.tar.gz"
      sha256 "6f0bd709566bc2fbd0616bb1eba9f41fd84bcc19756dfb834a9e1d92341f5231"
    end

    on_intel do
      url "https://github.com/jordiboehme/rezzer/releases/download/v#{version}/rezzer-v#{version}-linux-amd64.tar.gz"
      sha256 "f1dac2890fa2935f75b0cd5d0ed13d116d98ad5986f02c036bed576b4bd000a4"
    end
  end

  def install
    bin.install "rezzer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rezzer --version")
  end
end
