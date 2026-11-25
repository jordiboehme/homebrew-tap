class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.37.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "5da29e14f55de477355b61eb7e1f1c423ddb693e1e3248e0a74e88605a2c10fd"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "34aa9394bd5f7a5c7778c7cf50a81e617bf0ff2ce7ec0001d9db25a223b6355d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "4cfecae4385055eb4f20daaca023efc41fdf2e56151406c6ece4fe2433bb1ae2"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "f3c1d095587407870a446d10bf3ecbc3242a7148c6111162da9d62ec2f8901dd"
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
