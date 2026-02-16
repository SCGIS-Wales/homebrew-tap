class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.12/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "dc1764d9b693ec658e366877b4e100e17729572765440d0d4c5728dca9e17369"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.12/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "7ab43a3aeed6cff95f0c00f9c0d656b7426d2cc374cbd4d09e2922c795bce1f5"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.12/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1741781ed8e4e41c96037d7ba263f48280179b66be9b1157df6b2319e8af5b25"

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
