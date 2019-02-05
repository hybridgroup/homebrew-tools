class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.9.0"

  url "https://s3.amazonaws.com/gort-io/0.9.0/gort_0.9.0_darwin_amd64.zip"
  sha256 "744fb23c83b1c5ac8612f08c3c9f791ad12a2bef0a9d0b79eb695da6a124025b"
  

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
