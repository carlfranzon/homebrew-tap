class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.1.35.tar.gz"
  sha256 "4c82bd56816b8eb581682bbc0d408dff7ee920286e95780e284f7fa2ae8cc8b7"
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
