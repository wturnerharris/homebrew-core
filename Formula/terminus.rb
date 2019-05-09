class Terminus < Formula
  desc "Standalone utility for performing operations on the Pantheon Platform"
  homepage "https://github.com/pantheon-systems/terminus"
  url "https://github.com/pantheon-systems/terminus/archive/2.0.1.tar.gz"
  sha256 "69d195f6cc5bfffa5d0bec52807765d75a274203e5d1de9f38cac02324529bfe"

  depends_on "Composer"

  def install
    system "composer", "install"
    bin.install "bin/terminus" => "terminus"
    prefix.install Dir["*"]
  end

  test do
    system bin/"terminus", "self:info", "--field=terminus_version"
  end
end
