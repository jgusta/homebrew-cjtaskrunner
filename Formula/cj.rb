class Cj < Formula
  desc "Command-line task runner"
  homepage "https://github.com/jgusta/cjtaskrunner"
  url "https://github.com/jgusta/cjtaskrunner/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0a73c992c4b076b7a5a1a7d07cc8e59aed4273b0b2f96f7a3b27d64e1a679587"
  license "MIT"
  revision 1
  head "https://github.com/jgusta/cjtaskrunner.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cj", "--help"
  end
end
