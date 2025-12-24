class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.22/chop-macos-arm64"
  sha256 "18b63605c38e777f2838a08d69a2ef1ba88c144940f63667d07151620dfd85c0"
  version "0.5.22"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
