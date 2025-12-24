class Chop < Formula
  desc "Unix-philosophy CLI todo manager"
  homepage "https://codeberg.org/mphillips/chop"
  url "https://codeberg.org/mphillips/chop/releases/download/v0.5.23/chop-macos-arm64"
  sha256 "237c73b8d38e7274845c83fad8e073632f4f963706f0d9b0a76937b078785baf"
  version "0.5.23"
  license "BSD-3-Clause"

  def install
    bin.install "chop-macos-arm64" => "chop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chop --version")
  end
end
