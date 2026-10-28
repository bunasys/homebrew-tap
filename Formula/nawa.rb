class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.5.1/nawa-0.5.1-macos-arm64.tar.gz"
      sha256 "7d10da877dc262cd51ccc7e6cacc86cde0740232de83b738f2e53e6bc2806b0c"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.5.1/nawa-0.5.1-linux-amd64.tar.gz"
      sha256 "b3ada92ce447d0a115afc2093f19b37d26f4449dbeb6cbb2ba41d6ad98d1769a"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
