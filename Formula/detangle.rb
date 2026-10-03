class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.3/detangle-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "81ae068aed6e69fdf60f251fff9c053d9f87683e9ab3fc10595b112e9388b282"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.3/detangle-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "b784929f8641c34c6d7bb247e9df8cd15adba976f4a5b3c83671d5d84f240f03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.3/detangle-0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6be1c4631181d975de556f5123f9efa2903130ccbf43e64c9e1e371ff8da8ab7"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.3/detangle-0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afdc9dee6b0a660e5ac21672752b012bfef1019e91f4f72a68bf504bc9606660"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
