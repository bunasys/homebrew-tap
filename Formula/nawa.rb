class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.1/nawa-0.7.1-macos-arm64.tar.gz"
      sha256 "d7bfec1aeb0da33af88eb642e740a889eed2e3be656371c91c35131729059c98"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.1/nawa-0.7.1-linux-amd64.tar.gz"
      sha256 "b88e7112e0f19880700a7f18a14f43272f70a0e9edd7b166de8fb493bcfd8b06"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
