class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.4/detangle-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "4c298da2b531a5f4dbdc89d6d9d5f0c59efc0f890192035e32d6d078acc2cc3a"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.4/detangle-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "6a4026f6fdac5610b6a770a8f86d63230f7d1ff5dd57f92b6c5652760e9eabaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.4/detangle-0.2.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ff231b4540df893f8b6dbacd482893aca2db7c75426fde09665165e31d1da2b"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.4/detangle-0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "731a746037f04d07c6ad1ed27c127ff5d39fed6ff9e3bc42997ef09b3712e511"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
