class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "4.0.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.9/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "5fb21d9d1f8d75540cbafaa4ba828961adcaa5085660eef58bae01c2cd5f5387"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.9/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "f2346d23f6a3f2b98d62e6cff2b3f431585eaad7136c944e8125e4b6993cd560"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v4.0.9/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5abe352c76a4542d5483be43e2346880321d3a7813fb2d48efc96f6d1228a437"

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
