class CrosspointConvert < Formula
  desc "Convert any EPUB or Markdown into an EPUB your Xteink X4 renders beautifully"
  homepage "https://github.com/jordiboehme/crosspoint-convert"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-arm64.tar.gz"
      sha256 "ef0bae41852cb4fc83fd2d6216bcd6110ae6551d83964dc2be8db76eb9a56568"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-amd64.tar.gz"
      sha256 "bac0b25888fd61acae51903724cc915d1435275a7168c25500a8521e41933407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-arm64.tar.gz"
      sha256 "a7d6e12c805c8eb91c5b039410ef93c62006ce0f7436b6e7bdc51ef2ba3e6e7a"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-amd64.tar.gz"
      sha256 "ecd2f1e7596936cdc8b8a1d81187919da1edd4475e2ff76d388ba14e2e32ee91"
    end
  end

  def install
    bin.install "crosspoint-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crosspoint-convert --version")
  end
end
