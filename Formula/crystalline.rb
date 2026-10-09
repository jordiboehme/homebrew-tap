class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.24.2"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "6900d515acdb7ff1bb23fa04e161c84d0780500dd0b78723f26df5fa250ba25f"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "deb1f59178f98c55302ef1a6f381346690371f6f36b2bd0483fe8f267e86df52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "2cc88f49e5deb3bbece71710bc1b54d9b5ec87663af473dfc563d2614a78cbe6"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "ae50d3bd416fad0ef88169973b1caa3e3aabcaa170fb263f008686a9edd4850c"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
