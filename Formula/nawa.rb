class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.8.0/nawa-0.8.0-macos-arm64.tar.gz"
      sha256 "58a4fe0b5c54f02d610f4f4ecb1c4bd0ef4a5a5ccecdaa82938af27273bdc8bc"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.8.0/nawa-0.8.0-linux-amd64.tar.gz"
      sha256 "0460c75597a5fcdbde652a318d96e99b43abc58ed838036a11037d06e661c886"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
