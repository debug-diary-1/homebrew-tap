class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.2/detangle-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5701742e96cf27a8c29a8ad74a26b737073c057c43f6b4616ad6a93796223c31"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.2/detangle-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "29af794913edb6851fae5fffbf308bec9927115bc104db70269b6a674f1ff834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.2/detangle-0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e5a74286d362f8e983355e7fe17acd63e7f037208de5177af945e9f7be62801"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.2/detangle-0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95a3148084d89f028389cd04ecd7ea2665646acaeb46a5dfb0ccdae2109107f3"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
