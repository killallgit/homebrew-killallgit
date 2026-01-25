class Killallgit < Formula
  desc "CLI tool for managing git worktrees and cleaning up branches"
  homepage "https://github.com/killallgit/killallgit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_64_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64_SHA256"
    end
  end

  def install
    bin.install "killallgit"
  end

  test do
    assert_match "killallgit", shell_output("#{bin}/killallgit --help")
  end
end
