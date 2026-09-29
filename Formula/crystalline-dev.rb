class CrystallineDev < Formula
  desc "Local-first knowledge management for humans and AI agents (dev builds)"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.22.0-dev.2227"

  conflicts_with "crystalline", because: "both install the crystalline binary"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "0ed92cf434fcb8cff293874d47c444b21bd1e398f85523f22a2d66fb6e03b008"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "530f6fdebd21593b1beb79fe08ba16d536996092518321ae36af2eb221f48d60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "26e9669581aa3f24db4a4a63373b48692c338e81f92491226529f965208d9886"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "007f3b16faf83b31cbfbe81cf48738b5af0d46945a9a18edc0b887c11aad5cbf"
    end
  end

  def install
    bin.install "crystalline"
  end

  def caveats
    <<~EOS
      This is a dev build from main. It may migrate your index, and going back to an older stable release is not supported.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
