class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.18.2"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "bc1dbc541d03fd9c9def3c4f81c6defc830a2cac0c5ea573f3ad3256439c81e6"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "2bcea12bc9e63f63193ac4c0c11a303223bc2785faecaf7433c4100d781cc6b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "1eda5b8c023b990e6e376ed48b08a92381e20f23310fabaf02149df31b4bb5a6"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "3ee50f9fe1d2c57fe22efd97e5f19a8d8f381750f055db44b0b13ac22ebe3028"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
