class CrosspointConvert < Formula
  desc "Convert any EPUB or Markdown into an EPUB your Xteink X4 renders beautifully"
  homepage "https://github.com/jordiboehme/crosspoint-convert"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-arm64.tar.gz"
      sha256 "8adbc792616208ca0a84029c30ee6e4309076db69030f2c8e197a92de1e5ff37"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-amd64.tar.gz"
      sha256 "3f7101c113b78765100475f10e89cb2b179bbcfc91ecf9be02f9c9702f89e30f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-arm64.tar.gz"
      sha256 "e551d9fefe3306b196dd7a960a48295c1535766c4cbb4926c1376e19f2d365b2"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-amd64.tar.gz"
      sha256 "ba5bfaa556d30b983fb9d8dd438bc63f3d00499c2e8c15fdbbea38079dc8728d"
    end
  end

  def install
    bin.install "crosspoint-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crosspoint-convert --version")
  end
end
