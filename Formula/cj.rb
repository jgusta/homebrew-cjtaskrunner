class Cj < Formula
  desc "Command-line task runner"
  homepage "https://github.com/jgusta/cjtaskrunner"
  url "https://github.com/jgusta/cjtaskrunner/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9ad71d9f6d661bd711dabfb2607edae0fc4ea5e8ce7cc41fc28353ab0d349ea6"
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
