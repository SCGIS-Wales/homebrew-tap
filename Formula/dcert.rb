class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.60"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.60/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "c94cbb0637b55676c889a381adb871689895cb79ae9649e3f305a5194ee027b8"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.60/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "10fc8b2de24c0e0b088a9983ed4cfdb011fa0c19b716c9bc1a324e87a13dc93a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.60/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7b2671b0d88eda56f7350baff603841ea4afa9704adade46d698306dd85f2b8"

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
