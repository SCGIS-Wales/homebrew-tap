class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.65"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.65/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "ef44588db471116d195f338003b9bb18939e973b38d3a4832ede5c41ac6a6d2a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.65/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d86318336ab10b57d8ecf6bb7f2e6b684a71b17167f80d42af717f7566e3c1f6"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.65/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d4f1f28cf071dc171459aa15f4c27b8f96746873895fba8decff6fb07cc46af"

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
