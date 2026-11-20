class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.83"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.83/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "f05c47b103def7c2d874f9af9ebb9eac6c32b581bfe9778ac672d067fcc3db73"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.83/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "4c7eea21c1238a9e6b02ab0360ab609d0514cc86e80c8afbe8b61c7260f28223"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.83/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bcb4d0a59b67b6827e51b4bdb3c6229999cffa948e55afeb0b2460bdc4ad3393"

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
