class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.3.12.tar.gz"
  sha256 "f175b5d4c917098d8bb98072f0f6aed16dc7ec29f92c5369a49080b913bbcc6a"
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
