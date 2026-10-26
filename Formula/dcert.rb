class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.76"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.76/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "a6ef79a8f351c9dd00e7596979941822e56ae3ce282538fc4de870976b78bc8a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.76/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "e8196b07e74aad4b61b80394061e74f7e90d2106ba7a30a07e6cb5d39c489aa9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.76/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "137672d5da132cb81593085c2c017240ba30023a847fbcdee1beedeb5ab0cdba"

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
