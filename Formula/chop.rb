class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.17/chop-macos-arm64"
  sha256 "44cb8ee6fcf75891f55e9ccdbefdad582e741715754c443fff9470161d59699d"
  version "0.5.17"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
