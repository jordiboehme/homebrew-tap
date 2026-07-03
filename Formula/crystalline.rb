class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "abef491caa42758e74390ca0ed4828113033e074a826b984f29d5486e77f49aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb9d7d9fdb7af44b79c1813adb1a50eafd578a2097815bdaaafb79e1679afb62"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "165f9baee425caa1af51fa91f2e1f7400b5649bdd4f23c8d6eb187caccf0bf9d"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
