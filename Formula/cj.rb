class Cj < Formula
  desc "Command-line task runner"
  homepage "https://github.com/jgusta/cjtaskrunner"
  url "https://github.com/jgusta/cjtaskrunner/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "4bf234d3d4b8584c6d862b1cf324fac1c727602fb5eb87d030ef3822c7ee0519"
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
