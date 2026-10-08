class Detangle < Formula
  desc "Fast dependency analysis and architecture rules for JavaScript and TypeScript"
  homepage "https://github.com/debug-diary-1/detangle"
  version "0.2.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.7/detangle-0.2.7-aarch64-apple-darwin.tar.gz"
      sha256 "e4695cb3dcfd47a0db13b278be58371cad6e11460703033b4a2229fb525b459b"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.7/detangle-0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "fbd26e146ae3063e1842f3315e8c3790b87f4af70efed105575f15de63e90c0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.7/detangle-0.2.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80d0123b4e11a5b6255d2aeed183ae417e9228d19f1f2a3d41bcba3cbbfabe20"
    end
    on_intel do
      url "https://github.com/debug-diary-1/detangle/releases/download/v0.2.7/detangle-0.2.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca26c3f80abf6458c6f8410752106f29350ef33814d442b72c66ec4a79c2d1fd"
    end
  end

  def install
    bin.install "detangle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/detangle --version")
  end
end
