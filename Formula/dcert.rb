class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.82"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.82/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9d1b3d9d83e0ef1733461b537b0cf5059acab967125064f54046bb797f7d8229"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.82/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "2a9590e99f33cb8f29abcc6d7b26152189dde5112e29cbd4f438bfdd449db0e6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.82/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "626193f12a44e1cdb4f217a5aac0a0befbeca50bcbee11ee709e8e2617b85fc4"

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
