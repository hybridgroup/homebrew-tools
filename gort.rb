class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.8.0"

  if MacOS.prefer_64_bit?
    url "https://s3.amazonaws.com/gort-io/0.8.0/gort_0.8.0_darwin_amd64.zip"
    sha256 "acc7896f3765fbaea13f2007d87e7914af06d05d681a5ebad4fa22724e560b43"
  else
    url "https://s3.amazonaws.com/gort-io/0.8.0/gort_0.8.0_darwin_386.zip"
    sha256 "72ea8c8cc8d06c90374f1b503ae8b20cab1991bbd9047c57ddba98b00996a134"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
