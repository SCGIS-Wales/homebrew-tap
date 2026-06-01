class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.36"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.36/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "751459a6707a7cec4bcfe40001f1c7b0d63775dd86f7e4f49df81ccc1d54ae14"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.36/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "453ded682551eeabd987617d8be114d2dcf759068369f6c6d48c7a8cd0864766"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.36/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d66cb43b616aa781986f3c95e02cde5a75d07db4231a8daf592a7718a300d0b1"

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
