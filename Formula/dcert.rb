class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.79"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.79/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "627ad3a0703f0087927fd1023014d0557d010a85610696ea3f86d4c0fd89cf5a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.79/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d3fb0518dee31af81db9c48c2412593a3768a3e077be731f6967bb45962fe007"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.79/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9b7cd5c345153bec82983b977683026f75b7865e9dd745236515f025e209333"

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
