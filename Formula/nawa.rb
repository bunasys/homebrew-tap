class Nawa < Formula
  desc "Small agent harness: agent loop, AI gateway, MCP tools and ACP server"
  homepage "https://github.com/bunasys/nawa"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.3/nawa-0.7.3-macos-arm64.tar.gz"
      sha256 "57d5fd65a42dbea915946ab3b0820bb88cdc357faf115f70f25c0e19b9786442"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/bunasys/nawa/releases/download/v0.7.3/nawa-0.7.3-linux-amd64.tar.gz"
      sha256 "d45d60f8377b270f53cdaea4fa9e4503000b70ee01eecee13976370b14de74eb"
    end
  end

  def install
    bin.install "nawa"
  end

  test do
    assert_match "nawa #{version}", shell_output("#{bin}/nawa --version")
  end
end
