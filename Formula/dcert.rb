class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.18"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.18/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "616a0fbaf78718db78b676bda1e9f3527d971a90699e19ed1d50a432f0744791"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.18/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d760734f3f9443c68b9a90d27e60e8b45a506412d9cd0d8cf02c2e24e03090ea"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.18/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad569d3147c1aaafaf7ddaea2a9de43afc992b8e3d9bb7d0cbd68ee6e772b777"

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
