class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.20/chop-macos-arm64"
  sha256 "c63e719565a885f2e9dcd335dfc5c18ebc3d3527ac52cf6168059efe17f59022"
  version "0.5.20"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
