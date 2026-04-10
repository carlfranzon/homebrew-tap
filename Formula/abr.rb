class Abr < Formula
  desc "Portable parallel AI agent launcher using git worktrees + beads"
  homepage "https://github.com/carlfranzon/agent-beads-runner"
  url "https://github.com/carlfranzon/agent-beads-runner/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6d44287ca8c964cc8d1248ba0c3bcc1124cfdce1eae284bd1e065ec80a160584"
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
