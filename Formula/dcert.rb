class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.20/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "1e5d7c19c84aef5e05b3dd8a4605a73c34aa4635e5a4909dd54afe3784b1eca4"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.20/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "8aae1e5448aa63acf500f1ee605b3cc58c7983fd08aed12e0a2a99e47ff192e0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.20/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b58b0dbfb21882658cba78fa009358013bb193c80e389f5446e2b6d29dddceab"

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
