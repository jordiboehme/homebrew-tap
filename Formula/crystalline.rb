class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.8.8"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "34c5b5e2dbde0b606ac2ac442a4c54cc9eeba2a829182ae88a41bc11d379cd56"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "b04b9f3579a03d7f3dd7fbc5ca2ba3bb704012c51cd74e36b29afd21b5ae3c15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "3d33b8e206db0e7bad7f5afd2df1f84c822328bed8ec1eeed48b31ee8cbe9d84"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "08e8c21bb14bcd409a6d2bdf9529e9a2885843e1e317d9979f625adf1ff61a47"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
