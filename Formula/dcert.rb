class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.28"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.28/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "7c080c584de58e52b8eb60ace35ea4e910a3ba96948b9a5c2baef3f17905701a"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.28/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "9e0fade29b799ae74811cca9c0f11bc1c54ee444b1a81818aa1f290b7102633d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.28/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39ddef5d3303c824a9a61b4f1ac53a3c8697c930102510dd3839dd6bf9986898"

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
