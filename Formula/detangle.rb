class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.6/detangle-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "7e612334258c25273f5f4cc71dcf0841e532733ea618da5ead3632f43de423b1"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.6/detangle-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "487e0888643a0f717c946e64da52fb5c8243caeddfdfa677dd66e0d6b073097a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.6/detangle-0.2.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d67a10c1b44db6afe49b917ad799d7b1becd59037e99499b6973a4dad14392b"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.6/detangle-0.2.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a14f71d67cfd52c869cc0b4e734f04c9a06e9056515fbd5b67ebb0455662c4b2"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
