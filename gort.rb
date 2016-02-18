class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.5.2"

  if MacOS.prefer_64_bit?
    url "https://s3.amazonaws.com/gort-io/0.5.2/gort_0.5.2_darwin_amd64.zip"
    sha256 "dbcc1f35017ec452986798468631b47350b5bc6dc33e25e812c94c74438f190a"
  else
    url "https://s3.amazonaws.com/gort-io/0.5.2/gort_0.5.2_darwin_386.zip"
    sha256 "c22e022326774ea0b6a6d65fdb57ad2bf4c6e4fbc4221a26b46b0d6f8fa09822"
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
