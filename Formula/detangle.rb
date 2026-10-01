class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.0/detangle-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f8794270509db886b0aa02b89652ad453720ac30a8103d2e530dacf512efb10"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.0/detangle-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "feb9866013e2c5a200285a80ccd5a9655d8cc34f454154bc5a80269c1e0884e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.0/detangle-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1197e4df245be71750fe8fb133823ade918b9d5831f722363508e24e2a668e04"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.0/detangle-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc8c1dcafb85b65db0944fff9a18c780a75ebe129a3a1c1d05010c56959f1e5e"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
