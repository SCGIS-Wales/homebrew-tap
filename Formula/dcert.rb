class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.31"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.31/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "76c26c5390ee6f043eb70b203114f16b5ab454b0041e31cbfa4efa1f5b9975b4"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.31/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "b9edecf245aea6fc6103670d5b1ea61cfb4ada158fc7333cf6a20e1e065a65e0"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.31/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c73f94c3faf0da7dbbe82c7426969623579fa44251bfe43d02133d514674efa"

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
