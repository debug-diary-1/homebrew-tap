class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.0/detangle-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "913a88ebadb743241f93d9f0a83de128776ea1a3d8cd6599c4967de51e814f43"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.0/detangle-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1800d6b23432f4c572c34b55e100574171fec6aa455dc6314dc8000529b0080f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.0/detangle-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b464fccf0eac4f55ff3518b600352d8358cd90f7fd905b37b6773437c7538651"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.0/detangle-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da0af4e5d81989484b2c1d0c6451c53652c17e4937d47de081b2ab9134725220"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
