class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.30"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.30/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "45e0626aa03bfa79f631bf1142e2c897990c8fbcdfa7c6016b5a18c6bce1c695"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.30/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "55ba32e62c77fb07f5b155549afa699d7c929295480d9ab9f0f43c6a6688017d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.30/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca60be9c6595e228e1131be4ed6e49a82c5b91a6c2bc00dc9f95b8ff17d9acd1"

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
