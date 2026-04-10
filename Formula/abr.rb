class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "0ed57d171a7dfeea4c624106e30980905ce2ea278d66e983fed9d64bc1e4e899"
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
