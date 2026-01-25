class Killallgit < Formula
  desc "CLI tool for managing git worktrees and cleaning up branches"
  homepage "https://github.com/killallgit/killallgit"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-macos-aarch64.tar.gz"
      sha256 "d813ca22d39270a55aa1f3097c2c83a0096df0ab67c6be83d95d58098d279be0"
    end
    on_intel do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-macos-x86_64.tar.gz"
      sha256 "02ebe8189ebad1b0c1ddcec092dca11b748de592e9311310e4fa4f6ff9897c04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-linux-aarch64.tar.gz"
      sha256 "0aadaeedaa864967ab9f04d21306e3770560a1cb7595e464d48357e8b4ca0a9c"
    end
    on_intel do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-linux-x86_64.tar.gz"
      sha256 "feea995ae914d398425470d9642104af731ebc5a2328a6d85ce757b8337fa0b3"
    end
  end

  def install
    bin.install "killallgit"
  end

  test do
    assert_match "killallgit", shell_output("#{bin}/killallgit --help")
  end
end
