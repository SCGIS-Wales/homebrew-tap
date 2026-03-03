class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.21"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.21/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9972fc424131391418bf396dcb1bc97c6b863d68ca5ce268efc14f77347a09c9"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.21/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "a8300193a705fafc728a088d46c4dc548b9daeb79befb07f096df8435ec5c0e0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.21/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45121513f9ec2a0439d1f1a251066bcf36c9976e3832adcf95bdffb52823a6e8"

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
