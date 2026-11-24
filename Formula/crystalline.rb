class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "MPL-2.0"
  version "0.36.0"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "b49e680cedbd0772233a0c5948dbf3762efef32d8a935e27d64ec997d8b3a639"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-intel.tar.gz"
      sha256 "a1d66bb5ffc4fef8b335429c8721e1381039baf0b07505306c586adb7fa01e96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "7a7eb085e16669e6486de08ab593b3578e8c979f63813bac2acdc0cc484dcdd7"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "cf94087dbaad6b14438da2cd44c04be293bfaceb26d75e7d6ba94a669a359eae"
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
