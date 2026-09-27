class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.3/detangle-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "c39ba6ebdd7cf4e34be758647b61ed4d79f84d02f904e5e7d9c18994a0b14dcc"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.3/detangle-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "244be3a22b883e066b82975ec2089f085d6ee5e30b2a9d0dfc5d52481a3f4f48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.3/detangle-0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8528c20e971dc9e086adb88b655796df7bc827adaff3acff292d4f809b5e9f77"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.1.3/detangle-0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fd2fbd80bdf1f2d8928f6d7a0cda22176844e8210e56398eec99644aa1dd740"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
