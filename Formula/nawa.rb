class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.2/nawa-0.7.2-macos-arm64.tar.gz"
      sha256 "56e341c2a5336059830d089fdb41d1601711996f3c9e595285558f7b8f3f94d8"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.2/nawa-0.7.2-linux-amd64.tar.gz"
      sha256 "13dee48692ce440cd7d5cf496ad5709377682bd9f9899a598f4ef7ba6ee7c51c"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
