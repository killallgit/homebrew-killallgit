class Killallgit < Formula
  desc "CLI tool for managing git worktrees and cleaning up branches"
  homepage "https://github.com/killallgit/killallgit"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-macos-aarch64.tar.gz"
      sha256 "3c0f17c7c218249328d87b838642870954d3f88ae63474f52a037947b519da71"
    end
    on_intel do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-macos-x86_64.tar.gz"
      sha256 "a0cd40f745af77d396963107d22fcf588d4a8dcbd79091fa9df7f3f187c03f01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-linux-aarch64.tar.gz"
      sha256 "d524250d87ddd7706fb6ea1c91145bd93c16b0106a9445405133e99b5daa268d"
    end
    on_intel do
      url "https://github.com/killallgit/killallgit/releases/download/v#{version}/killallgit-linux-x86_64.tar.gz"
      sha256 "06f74c02cb4df8c66f2ed205bcbaf4dfa22f0d71249ae48a5a9b92a14ddf47dd"
    end
  end

  def install
    bin.install "killallgit"
  end

  test do
    assert_match "killallgit", shell_output("#{bin}/killallgit --help")
  end
end
