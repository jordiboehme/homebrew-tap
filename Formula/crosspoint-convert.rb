class CrosspointConvert < Formula
  desc "Convert any EPUB or Markdown into an EPUB your Xteink X4 renders beautifully"
  homepage "https://github.com/jordiboehme/crosspoint-convert"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-arm64.tar.gz"
      sha256 "ac699a412f09f09186d412378df8ce0022ce2297178691830e8ef64ea82f22f6"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-amd64.tar.gz"
      sha256 "364e1c7829a1d55ecea1057b95e772a9ca4776eb1681ff4e799b3513a56ccba5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-arm64.tar.gz"
      sha256 "792d9f2fe71ade26df3262f7eca7d9f52ce9260ccb06a61a42505191bdf5ccbb"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-amd64.tar.gz"
      sha256 "2837691e7603203e2b15ccf0cf1d6788fa68f3ebf894de3c12081d8bd3a14e09"
    end
  end

  def install
    bin.install "crosspoint-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crosspoint-convert --version")
  end
end
