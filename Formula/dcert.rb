class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.55"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.55/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "637f48c1a25e9b7e0731464fb4f98bcff1c93931806cc6470b7cd6dfbb7e1423"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.55/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "d5e5b05c94cc9a11368671cf5089badb6553e79315f5a7b856c7c31d4a148485"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.55/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea93e3e64977fdf1e52c76fc691ced149c2d1c3e475323c545029a8ccccab4be"

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
