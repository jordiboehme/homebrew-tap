class CrosspointConvert < Formula
  desc "Convert any EPUB or Markdown into an EPUB your Xteink X4 renders beautifully"
  homepage "https://github.com/jordiboehme/crosspoint-convert"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-arm64.tar.gz"
      sha256 "4a6c923d6510ea59e8f08fe59d16b06c91d37388e2deb2b2998e98c889334987"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-macos-amd64.tar.gz"
      sha256 "ec0c09630e1ebfbb26e6480c8cf518c2a9766b51b9a761774f423857cd106b68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-arm64.tar.gz"
      sha256 "92a70e2bc94a451aa3bbbfa9621c9f464ba2bd9e4d8dda712b08e1601144a6e5"
    end

    on_intel do
      url "https://github.com/jordiboehme/crosspoint-convert/releases/download/v#{version}/crosspoint-convert-v#{version}-linux-amd64.tar.gz"
      sha256 "8936fb88d73b9bc72d95ca12113f5fbc95ef5d4757e038685768637a113a7cf1"
    end
  end

  def install
    bin.install "crosspoint-convert"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crosspoint-convert --version")
  end
end
