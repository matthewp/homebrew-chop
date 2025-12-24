class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.19/chop-macos-arm64"
  sha256 "737e27f2e6db0b253706ff9e86c9695f423ec260ba0e8d80bc782059c83b5d21"
  version "0.5.19"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
