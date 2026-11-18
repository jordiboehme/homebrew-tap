class Notedown < Formula
  desc "Turn Supernote handwritten notes into Markdown"
  homepage "https://github.com/jordiboehme/notedown"
  url "https://github.com/jordiboehme/notedown/releases/download/v0.1.0/notedown-v0.1.0-macos.tar.gz"
  sha256 "b423aadb3ca50f43e390cd50644184827412cba12463eb302cf294a0e67b428b"
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
