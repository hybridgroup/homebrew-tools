class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.6.1"

  if MacOS.prefer_64_bit?
    url "https://s3.amazonaws.com/gort-io/0.6.1/gort_0.6.1_darwin_amd64.zip"
    sha256 "14fc273765127f222a92b152153ae140eaf442e6a051f0d33d2fc46d6cf307be"
  else
    url "https://s3.amazonaws.com/gort-io/0.6.1/gort_0.6.1_darwin_386.zip"
    sha256 "52d5f9075e0aedf5d92872a98c4590884caa82009674147536aa7d62e6f61296"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
