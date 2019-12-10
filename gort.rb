class Gort < Formula
  desc "GORT is a Command Line Toolkit for RobotOps"
  homepage "http://gort.io/"
  version "0.9.0"

  if OS.mac?
    url "https://github.com/hybridgroup/gort/releases/download/v0.9.0/gort_0.9.0_darwin_amd64.zip"
    sha256 "744fb23c83b1c5ac8612f08c3c9f791ad12a2bef0a9d0b79eb695da6a124025b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hybridgroup/gort/releases/download/v0.9.0/gort_0.9.0_linux_amd64.tar.gz"
      sha256 "4a6cf5c2177f655839adc514ed1cc118a5b98e79ff18a6ac6212872a141291f6"
    end
    if Hardware::CPU.arm?
        url "https://github.com/hybridgroup/gort/releases/download/v0.9.0/gort_0.9.0_linux_arm.tar.gz"
        sha256 "87af3cd4192e1acfaf670507ec0b8eccd1aa7adcbd384ee0ee49012332bee5c4"
    end
  end

  bottle :unneeded

  def install
    bin.install "gort"
  end

  test do
    system "#{bin}/gort", "--version"
  end
end
