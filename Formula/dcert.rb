class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.87"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.87/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "d1e5c6768b19b62cd79327e691bef86376c4a658aafc5401d9715eafc500ee28"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.87/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "8c6e9d91117371eccc688a3f219fa66fe48daaca888f5b89ddec4efd2ef8fb85"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.87/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0789aeb00ffb4b51b7c8e9c9d64d8184ca63a755bfbcb7bfde0bf207ade8b20"

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
