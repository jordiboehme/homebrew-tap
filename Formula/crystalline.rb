class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.25.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "7bc66728c6a88f9eb466986a562c2039cdccdcda344daa8e2889d2944e238865"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "9be7c071ab3b254d3f3c1537317aa7f7f33ca6d7ccd2211f264f6c09b8808f2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "cde55c610ed01bbe107d683b1c8bba808abbe9933217e5ca0646ca98b2a451e6"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "760e7e55abab210ce2753e6eab80b6915de99118c9ef634ddd552fd89039213c"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
