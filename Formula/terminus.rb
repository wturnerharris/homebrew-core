class Terminus < Formula
  desc "Standalone utility for performing operations on the Pantheon Platform"
  homepage "https://github.com/pantheon-systems/terminus"
  url "https://github.com/pantheon-systems/terminus/archive/2.4.0.tar.gz"
  sha256 "9e94ec981bb41eb33fb2b507556360e7b57bf55aaa1de970f8af16c5b092a131"

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
