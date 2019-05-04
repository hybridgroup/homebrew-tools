class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.9.0"

  if MacOS.prefer_64_bit?
    url "https://github.com/hybridgroup/gort/releases/download/v0.9.0/gort_0.9.0_darwin_amd64.zip"
    sha256 "744fb23c83b1c5ac8612f08c3c9f791ad12a2bef0a9d0b79eb695da6a124025b"
  else
    url "https://github.com/hybridgroup/gort/releases/download/v0.9.0/gort_0.9.0_darwin_386.zip"
    sha256 "56c2e2621d69501eb230514cb93deaca8bf26d86c1f8d821af3719e5a03076dd"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
