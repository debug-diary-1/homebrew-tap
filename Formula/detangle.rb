class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.2/detangle-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "7b298e52ac1bf2350996b92eca1e57cd459ce8930802b9a42a19463ef0ab4d3d"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.2/detangle-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "961c2932df5c4d3195df72e2f27d7f4f2167e8c2b12439ac19aee8a8a8dba560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.2/detangle-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "063e2cec509a55778ea0bba5e9c73884bc1faf08584a0077d0819ca01e20e385"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.2/detangle-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1c1110a0b56ea605b084d882cfe89290fa38131aaf627e6098fe5214b66109f"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
