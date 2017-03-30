class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.8.1"

  if MacOS.prefer_64_bit?
    url "https://s3.amazonaws.com/gort-io/0.8.0/gort_0.8.0_darwin_amd64.zip"
    sha256 "be09312d577c477d9720b591044773a8f4f95655c3112a8ab901c5de17fbd4ff"
  else
    url "https://s3.amazonaws.com/gort-io/0.8.0/gort_0.8.0_darwin_386.zip"
    sha256 "12e781132a1e6f93fd17e9107af95a4c2534cfcbc4034092aa1d074a61938d50"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
