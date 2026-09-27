class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.1/detangle-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d5d15841394d7b252f491629835e5f3ef5a7205b7f4c3fce0294150ab7818db6"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.1/detangle-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "97a141a30d04d9e388ce0b4034a1b1acf4b2c2f3f0b04a48762ea4f9146b4fa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.1/detangle-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d47661cfcce189a093ba4b074b48f8008451a5243eeac740351f1275e9c1df2"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.1/detangle-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fe7e528e8e34b53ff496456e73741d52fd6b812428a2a50f367cfd8d7289e61"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
