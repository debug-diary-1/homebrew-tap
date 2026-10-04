class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.5/detangle-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "f5b75f77a91c8345baaa19cceb1f00ec091c260aec3e9b0d6c5dc0eab5528675"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.5/detangle-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "4caf559eb3c476394ae975e038af2b8d8b0aeedf265d9f47c7fed64b50ad664c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.5/detangle-0.2.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90adff1cf934e29ed9b2618b76245529fac8756bafe4e86c2787a62f4eb32043"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.5/detangle-0.2.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c8ae957b24a9f333326625b27783f140ed790d88f63d56ad749a3892afb3553"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
