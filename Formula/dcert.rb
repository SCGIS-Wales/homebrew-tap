class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.72"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.72/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "1e20e941c9ea73e8cdb0beec952275cc29a9f4aff89aa325730c6f23b871bf17"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.72/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "cd62c35bf2f2ef2374306c62f5c0acb677c774289d1648a8c3c8f48d3571810d"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.72/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7f00a1810d8168df48fe0d953e9dd5ed1b88a096228ce34607dfa845358a38f"

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
