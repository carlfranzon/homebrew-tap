class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "705475fa608cc82420f5d8541f212e42a2cfa2879a24ba70e7e8088b123a6b44"
  license "MIT"

  depends_on "git"
  depends_on "python@3"

  def install
    bin.install "bin/abr"
  end

  test do
    assert_match "abr #{version}", shell_output("#{bin}/abr --version")
  end
end
