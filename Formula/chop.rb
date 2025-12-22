class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.9/chop-macos-arm64"
  sha256 "0bc8757d87315291a6e99c6de2d7dcb4c879f15f0ad3d0d06325f49f4aed90e5"
  version "0.5.9"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
