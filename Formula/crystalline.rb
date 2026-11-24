class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.36.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "50a2081732ce54a9f92f27993627b0ec26a0abf51e9af68abf15bbf1ac3cfda0"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "023b727827132686edd283210be4301af29f32600a277d7f01dbebcfb54f4f8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "9e748af111678e18cf5e9566e988f1d57e43a231d1aa7bfede8f31617a8e90e6"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "ad24eb9169476b77e9c466e62f970692988db44c5aee52c685d66cb24812c5b8"
    end
  end

  def install
    bin.install "crystalline"
    (libexec/"install-source").write "homebrew\n"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
