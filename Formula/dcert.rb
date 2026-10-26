class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.77"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.77/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "2db53a2da2130a3b371a131b0a086f21de74401eba33b5f0c78ba1b0657bd2ff"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.77/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "dcc9d10f72644c8447cf9122295fa570d1ab7b67d40455a2d4dcb82cc7cfeae6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.77/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2127dfb05f5814620caf8ec597024d6ea6fe814614c68cd5440323fc99c8f868"

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
