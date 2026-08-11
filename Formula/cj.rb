class Cj < Formula
  desc "Command-line task runner"
  homepage "https://github.com/jgusta/cjtaskrunner"
  url "https://github.com/jgusta/cjtaskrunner/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c564fd55db66a62947850262dd8fea64070f70745c1098dac6cac91c05355bf9"
  license "MIT"
  head "https://github.com/jgusta/cjtaskrunner.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cj", "--help"
  end
end
