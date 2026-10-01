class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.1/detangle-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ab50c304526bf2bffd209732547cd51dd39e5c429a94a7353efa1dab50f92d56"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.1/detangle-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "922b45540809797089af4886f0e2939eb9b010fa10c3ee39c15142c961080a7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.1/detangle-0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4de6ad64231fbe079d30c493aa5de417e4553e5bb091199323e5b4a4f10aa1bc"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.1/detangle-0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74044cc49738fe78fce326752e9fd9761ce3bc5da031ab44ea95dcee752110c9"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
