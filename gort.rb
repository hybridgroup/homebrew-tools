class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.9.0"

  url "https://github.com/hybridgroup/gort/releases/download/v0.9.0/gort_0.9.0_darwin_amd64.zip"
  sha256 "05b1baacdc0b4b6202a01b0e622d81ba60d2ed1963e6f14563f8caafc4ad8460"

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
