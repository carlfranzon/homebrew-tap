class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.2.16.tar.gz"
  sha256 "dc6249bc0a8e33c37dad504ff9b274ae86fefa079c27f939672371f1bf251ac3"
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
