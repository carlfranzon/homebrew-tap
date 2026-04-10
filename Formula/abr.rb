class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "cfe58abfa1f3078b7f6738729f8d93decd0fa1cd6781b817ca781885bfd776f2"
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
