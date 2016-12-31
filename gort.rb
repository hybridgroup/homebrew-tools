class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.7.0"

  if MacOS.prefer_64_bit?
    url "https://s3.amazonaws.com/gort-io/0.7.0/gort_0.7.0_darwin_amd64.zip"
    sha256 "7b1b191641acb74136f514d9c25f1ed83d9bec4c98e9e9399e6217d3580300cd"
  else
    url "https://s3.amazonaws.com/gort-io/0.7.0/gort_0.7.0_darwin_386.zip"
    sha256 "cacd58ffd168fd52bd75ea22c09a49a9472b2ece08e6d2c027778370a1bf9a8a"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
