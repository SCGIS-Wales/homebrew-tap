class Dcert < Formula
  desc "TLS certificate decoder, validator, and MCP server"
  homepage "https://github.com/SCGIS-Wales/dcert"
  version "3.0.61"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.61/dcert-x86_64-apple-darwin.tar.gz"
      sha256 "9b9f106d05e413a7acd8830895a4a9ec9ea386cb2fe23966701de02f34c043f1"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end

    on_arm do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.61/dcert-aarch64-apple-darwin.tar.gz"
      sha256 "76e765ff311f3037820ba45720a3a82689b2dc1c141b6ca184ff9f9b28160f78"

      def install
        bin.install "dcert"
        bin.install "dcert-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SCGIS-Wales/dcert/releases/download/v3.0.61/dcert-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbb8e3fd5641c6c0474a63152c8d5f1a3f23e8d67d6e0b292580b13ed6d1f246"

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
