class Crystalline < Formula
  desc "Local-first knowledge management for humans and AI agents"
  homepage "https://github.com/jordiboehme/crystalline"
  license "AGPL-3.0-or-later"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-arm64.tar.gz"
      sha256 "1e00d05e206fcf5f6606f8c1efe216adb0060e29b260b07970df0e3c4565935c"
    end

    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-macos-amd64.tar.gz"
      sha256 "92bbf68864d8587c5e6c07e3a0bab7e49894ab8627e3647daf0835068c653a67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-amd64.tar.gz"
      sha256 "45137218cb02d4c441f2cf00ed3c475af3538daf712629877fe0fa8fc204eba7"
    end

    on_arm do
      url "https://github.com/jordiboehme/crystalline/releases/download/v#{version}/crystalline-v#{version}-linux-arm64.tar.gz"
      sha256 "756a6883f7fcf0d1b8ddba7269e74e8d33e5b095552936c97e3207e2361d7604"
    end
  end

  def install
    bin.install "crystalline"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crystalline --version")
  end
end
