class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.95"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.95/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "93fc0472ed69d4b37e07ae48610a6456081bbb25981b91f6eec264ec7e982f8f"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.95/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "c798d4101d36ac43d1815d43ae27614cd26b21f5d29393acfb95656392375d84"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.95/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07ed97930451affe3117af54afebea8cd877af2f4e3377b268d0a41e49d4716a"

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
