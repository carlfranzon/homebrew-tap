class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "7c35021710100f4c0f3af56551e470e317c95c0f1d61306bea4bf22593d083d4"
  license "MIT"

  depends_on "git"
  depends_on "python@3"

  def install
    bin.install "bin/abr"
  end

  def caveats
    <<~EOS
      To enable AI agents to discover abr commands, install the skill:
        abr --install-skill
    EOS
  end

  test do
    assert_match "abr #{version}", shell_output("#{bin}/abr --version")
  end
end
