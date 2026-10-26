class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.63"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.63/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "7edf272ea3956b88b0d1efee2db67bbee99def5c557aed32451716ce4eb23c3d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.63/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "0a26132bc7ea93444adbea4813780d6bc330da67bce3c08489e0014992c367af"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.63/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7c2a7ab3370226c1c0d9b209c0b65e357a9843b1ffd44764c1df16ae9df9b91"

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
