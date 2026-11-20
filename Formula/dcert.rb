class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.84"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.84/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "0165944f69b5aed087a5e6561e6ce89b26998330e4501456170df6cef41a6c02"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.84/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "bf543206afe0e9094d977e5db100f9bfcbe96b6d201d3d023b3719ff341fb5e5"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.84/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "451e4a3d5b13881a8b763c3d4c89919843130d188b8a2f2ebb36f4629741d4a7"

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
