class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.24/chop-macos-arm64"
  sha256 "c6bafafec28b092dd68d2332ed79b1175850786b66836af110da0f2ea8bc93d1"
  version "0.5.24"
  license "BSD-3-Clause"

  resource "manpage" do
    url "https://codeberg.org/mphillips/chop/releases/download/v0.5.24/chop.1"
    sha256 "7a9b121668cfb6966ba6368b6b0e67e6f84530363863a50d7bae39aeadd930c8"
  end

  def install
    bin.install "chop-macos-arm64" => "chop"
    resource("manpage").stage { man1.install "chop.1" }
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
