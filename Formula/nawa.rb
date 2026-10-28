class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.5.0/nawa-0.5.0-macos-arm64.tar.gz"
      sha256 "3439fa49ea897824f1fe96e2f874d2a18e44d031fe9b3770374224ab6c3ea5bb"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.5.0/nawa-0.5.0-linux-amd64.tar.gz"
      sha256 "7236ed7b8755c60b74f68e06325ac285929ed1b0918c39fbd4834ca4537cb8c3"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
