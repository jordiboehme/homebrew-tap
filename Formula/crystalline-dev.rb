class CrystallineDev < Formula
  desc "Local-first knowledge management for humans and AI agents (dev builds)"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.22.0-dev.2273"

  conflicts_with "crystalline", because: "both install the crystalline binary"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "5563ac5f22b74b73b454ed8f1cada66f0b5bbecadd4fc0cec5c2ea5bfef3fc43"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "e3de51fc21f5d3a765c3ec170a78e5b1a2e7c43f03a411bc366378cbfb0d388a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "a28f431a71f5625b742ad7acaf3dca1dc39f447be5899bbd6d3be1a5af9136a0"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/dev-#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "b01afb069e55eba4998034cf10a12a6f32c7f022fbd445f9252fcea515fcd6fe"
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
