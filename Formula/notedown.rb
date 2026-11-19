class Notedown < Formula
  desc "Turn Supernote handwritten notes into Markdown"
  homepage "https://github.com/jordiboehme/notedown"
  url "https://github.com/jordiboehme/notedown/releases/download/v0.2.0/notedown-v0.2.0-macos.tar.gz"
  sha256 "05a72dad2d7ee3c912a16d1e3201db1c3b59c3c472e400b8a70b33d0e01bbe38"
  license "AGPL-3.0-or-later"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "notedown"
    prefix.install "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/notedown --version")
  end
end
