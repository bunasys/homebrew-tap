class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.6.0/nawa-0.6.0-macos-arm64.tar.gz"
      sha256 "307a5089c4d1a966f6a8430dc7c49f8b87ceeb29663dbf4abe8094d4a912d465"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.6.0/nawa-0.6.0-linux-amd64.tar.gz"
      sha256 "3bcc7794f51e76fbf02bf4f6c24f166668f1a77c089a3183c4294f5426d753b4"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
