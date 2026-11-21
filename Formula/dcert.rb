class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.10/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "157d5a55da09895fe1dc7d70f0d06ba686f7eeb8b8aa4ee53c3dd830d22915db"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.10/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "17239e9b185113e06a210fea23882bf928e4078c471b8197838f57f7d72203f3"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.10/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd8fa29736da326a7a2be717a6846139d9823c6597116403ccb7eed136abdc0d"

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
