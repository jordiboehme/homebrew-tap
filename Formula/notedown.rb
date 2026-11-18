class Notedown < Formula
  desc "Turn Supernote handwritten notes into Markdown"
  homepage "https://github.com/jordiboehme/notedown"
  url "https://github.com/jordiboehme/notedown/releases/download/v0.1.1/notedown-v0.1.1-macos.tar.gz"
  sha256 "d7fddf98b4814fdf06abe40d3850d5017c9578e905e819b2977ded71daebcfbd"
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
