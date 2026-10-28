class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.5.2/nawa-0.5.2-macos-arm64.tar.gz"
      sha256 "8accc87fd8dd343e4f34c4b6140b66cffeccbcbe06891932705d84de7ada8f1e"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.5.2/nawa-0.5.2-linux-amd64.tar.gz"
      sha256 "d1a19170b66d2c85028ea41a9ab6f0939833830d527d86a190d1bda158755e53"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
