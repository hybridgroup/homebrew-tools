class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.6.2"

  if MacOS.prefer_64_bit?
    url "https://s3.amazonaws.com/gort-io/0.6.2/gort_0.6.2_darwin_amd64.zip"
    sha256 "ee19afa3d3c8f463b3e3695fe560e034ef16800010149295ab6010aa05b24650"
  else
    url "https://s3.amazonaws.com/gort-io/0.6.2/gort_0.6.2_darwin_386.zip"
    sha256 "f19444814c5e636b32b333217526f5a40055cfcdfefada3b56f7098b28f448b5"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
