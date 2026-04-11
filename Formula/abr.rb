class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "6b8fec00bc124173d8d8b4b9e59bb56f05a07cdc9625ec7ac6f60dbabd9c1676"
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
