class Cj < Formula
  desc "Command-line task runner"
  homepage "https://github.com/jgusta/cjtaskrunner"
  url "https://github.com/jgusta/cjtaskrunner/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8f12d9acb31c89c07f927f123eba490ebf903bb701fb4de18c802b9cd8229ee6"
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
