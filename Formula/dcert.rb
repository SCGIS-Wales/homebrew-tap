class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.8/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9c2c0601053e493b8119c496124507a7567491baf68619bb8ed113afecab7c60"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.8/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "1bd1e61686b8760e09c85cc2c7533455ecdcf549877be47d162256b87aede5c0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.8/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c94e3e10d9ae734ede29daaca68250e63d587593690e9e2401cb605488ab916"

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
