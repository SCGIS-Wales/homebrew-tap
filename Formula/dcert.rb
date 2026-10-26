class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.56"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.56/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "88493c8be545b77a8523a948555d833223479c08e6c0d54973f08ce0a69f06bb"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.56/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "065e6acf12fd01a2f5857b0b67cbb1b693421656986b79e2f4f655bcd2e6fcf3"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.56/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b606b2961ab0ea3c93b1231c7b3a3baa1a2cf2d8a1645d995baf3eda4bd76935"

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
