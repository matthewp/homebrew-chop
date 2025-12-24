class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.21/chop-macos-arm64"
  sha256 "3da09a34f559b49e46df6a1ab4f4f9b7416945491a12afbab8ff45a8f16e90cd"
  version "0.5.21"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
