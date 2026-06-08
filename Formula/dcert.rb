class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.38"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.38/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "316dd7257a5a2bf6612c1e64178452f661e61f578cb3978a16f2c2d1849d8217"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.38/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0d41cfa9ac1c3df5f6184c8972d87a7797f0f3d65560cc2cd7551f851d7e4b89"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.38/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01ebc8e226008b9f984e8d33b69d92ee091f4e651fbf22727a514ad3726d9ffc"

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
