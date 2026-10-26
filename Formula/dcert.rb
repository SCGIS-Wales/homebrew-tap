class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.75"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.75/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "6f729af6be4724729e65026ab15684b6014a0b5c873f98cbaa8e7b5ae337d03b"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.75/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "dbcb4abba111947c8e363a6519f12c5736ce386609aedce5f3f558ca27e40188"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.75/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0597bb71e9ff714b312d0b23782e321822783e0a36257892db52739dea41e238"

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
