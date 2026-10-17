class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.27.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "ab933a20e5852dd15ccc16c25f8ed64e147204a46728d88676ccf16358a81924"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "94cedb3cbfb922ab70cdf905e7669094066379d880de098d61c7c7ad4418ad86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "0f1cf0bc7c5d8dafe46f1e1e39f602f50764aee170ac439aeeb04fefdbade18a"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "23ad41391ee81dd65521b0673eb21d726a30c01cfd265ce7b48a3ef9d7204cf9"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
