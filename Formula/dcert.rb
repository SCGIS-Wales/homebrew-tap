class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.58"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.58/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "e42bd3671e16281f0f4a9f02a99ffa41aee15b99f52022101d7a5b1233212ec0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.58/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "088be7411f2a7c1b4dac17168476ce040fb6a91c0e2bcb6d92b7a77b0598da41"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.58/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a548a26296f2c167590e22281e2aa1ee683b3458fc4a596fa666e83d9e0b80b0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcert --version")
  end
end
