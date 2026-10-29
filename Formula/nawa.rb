class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.0/nawa-0.7.0-macos-arm64.tar.gz"
      sha256 "a496d8ef9ccdaf28f9d10e293a557d602b2f9c39f3f099fd0497e3c0c08cd420"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.0/nawa-0.7.0-linux-amd64.tar.gz"
      sha256 "b8d7ff1b82696ece7f35873dd36d2268781ca9d846de355d68b052a64d004a33"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
