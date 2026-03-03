class Killalltofu < Formula
  desc "Schedule automatic destruction of Terraform/OpenTofu infrastructure"
  homepage "https://github.com/killallgit/killalltofu"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/killallgit/killalltofu/releases/download/v#{version}/killalltofu-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/killallgit/killalltofu/releases/download/v#{version}/killalltofu-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/killallgit/killalltofu/releases/download/v#{version}/killalltofu-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/killallgit/killalltofu/releases/download/v#{version}/killalltofu-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "killalltofu"
  end

  test do
    assert_match "killalltofu", shell_output("#{bin}/killalltofu --help")
  end
end
